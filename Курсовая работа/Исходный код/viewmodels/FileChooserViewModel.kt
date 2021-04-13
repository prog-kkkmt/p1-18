package com.kmem.myplayer.viewmodels

import android.app.Application

import androidx.core.content.ContextCompat.getExternalFilesDirs
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.kmem.myplayer.ui.activities.FileChooserActivity
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

/**
 *  ViewModel для FileChooserActivity.
 *  Отвечает за обработку данных для активности, освобождая её от этой обязанности.
 *  Таким образом, активность отвечает только за прорисовку элементов на экране и реакцию на действия пользователя.
 *  Активность получает данные от этого класса.
 */

class FileChooserViewModel(application: Application) : AndroidViewModel(application) {
    private val _currentPath: MutableLiveData<String> = MutableLiveData()
    private val _currentDirName: MutableLiveData<String> = MutableLiveData()
    private val _currentDirs: MutableLiveData<ArrayList<FileChooserActivity.FileTreeComponent>> =
        MutableLiveData()

    val currentPath: LiveData<String> = _currentPath
    val currentDirName: LiveData<String> = _currentDirName
    val currentDirs: LiveData<ArrayList<FileChooserActivity.FileTreeComponent>> = _currentDirs
    var wasSelectedOneFile = false
    var positionSelected = 0

    private var currentTree: FileChooserActivity.FileTreeComponent? = null
    private val pathsToUpload: ArrayList<String> = ArrayList()

    init {
        setHomeDirs()
    }

    fun setHomeDirs() {
        val result = ArrayList<FileChooserActivity.FileModel>()
        val externalDirs = getExternalFilesDirs(getApplication(), null)

        var internalPath = externalDirs[0].absolutePath
        internalPath = internalPath.replaceFirst("/Android.+".toRegex(), "")
        val internalPathFile = File(internalPath)
        val internalFileModel =
            FileChooserActivity.FileModel("Internal memory", internalPathFile) // Custom name
        result.add(internalFileModel)
        if (externalDirs.size > 1) {
            var sdPath = externalDirs[1].absolutePath
            sdPath = sdPath.replaceFirst("/Android.+".toRegex(), "")
            val sdPathFile = File(sdPath)
            val sdFileModel = FileChooserActivity.FileModel("SD Card", sdPathFile)
            result.add(sdFileModel)
        }

        _currentPath.value = ""
        _currentDirName.value = ""

        // first invoke
        if (currentTree == null)
            currentTree = FileChooserActivity.DirectoryNode(null, null).apply {
                this.childModels.addAll(result)
                this.initialize()
            }

        while (currentTree?.parent != null)
            currentTree = currentTree?.parent

        wasSelectedOneFile = false
        _currentDirs.value = currentTree?.childsList()!!
    }

    private suspend fun openDir(dir: FileChooserActivity.FileTreeComponent?) {
        if (dir == null)
            return
        // main tree hasn't parent
        if (dir.parent == null) {
            setHomeDirs()
            return
        }

        currentTree = dir
        _currentPath.value = dir.model?.file?.absolutePath
        _currentDirName.value = dir.model?.name

        withContext(Dispatchers.IO) {
            dir.initialize()
        }

        wasSelectedOneFile = false
        _currentDirs.value = dir.childsList()!!
    }

    suspend fun openPreviousDir() {
        val prevDir = currentTree?.parent
        if (prevDir?.model == null)
            setHomeDirs()
        else
            openDir(prevDir)
    }

    suspend fun onClick(position: Int) {
        val currChild = currentTree!!.childAt(position)
        if (currChild!!.isDirectory)
            openDir(currChild)
        else
            selectFile(currChild, position)
    }

    fun onCheckboxClick(position: Int, value: Boolean) {
        currentTree?.childAt(position)?.changeSelected(value)
    }

    private fun selectFile(file: FileChooserActivity.FileTreeComponent, position: Int) {
        wasSelectedOneFile = true
        positionSelected = position
        file.changeSelected(!file.isSelected)
        _currentDirs.value = currentTree?.childsList()!!
    }

    fun selectAllCurrent() {
        if (currentTree?.childsList()!!.all { it.isSelected })
            currentTree?.childsList()!!.forEach { it.changeSelected(false) }
        else
            currentTree?.childsList()!!.forEach { it.changeSelected(true) }

        wasSelectedOneFile = false
        _currentDirs.value = currentTree?.childsList()!!
    }

    fun loadFiles(tree: FileChooserActivity.FileTreeComponent? = null): ArrayList<String> {
        var tmpTree = tree
        if (tree == null) {
            pathsToUpload.clear()
            // get the main tree
            while (currentTree?.parent != null)
                currentTree = currentTree?.parent
            tmpTree = currentTree
        }

        for (child in tmpTree?.childsList()!!) {
            if (child.isSelected) {
                if (child.isDirectory)
                    loadAllFiles(child)
                else
                    pathsToUpload.add(child.model?.file?.absolutePath!!)
            } else if (child.hasSelectedChilds) { // always false for files (not dirs)
                loadFiles(child)
            }
        }

        return pathsToUpload
    }

    private fun loadAllFiles(tree: FileChooserActivity.FileTreeComponent?) {
        for (child in tree?.childsList()!!) {
            if (child.isDirectory)
                loadAllFiles(child)
            else
                pathsToUpload.add(child.model?.file?.absolutePath!!)
        }
    }
}