package com.kmem.myplayer.viewmodels

import android.app.Application
import android.net.Uri
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.kmem.myplayer.data.AppDatabase
import com.kmem.myplayer.data.Track
import com.kmem.myplayer.utils.MetadataHelper
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

/**
 *  ViewModel для PlaylistFragment.
 *  Отвечает за обработку данных для фрагмента, освобождая его от этой обязанности.
 *  Таким образом, фрагмент отвечает только за прорисовку элементов на экране и реакцию на действия пользователя.
 *  Фрагмент получает данные от этого класса.
 *  Данный класс получает данные из БД и обновляет БД.
 */

class PlaylistViewModel(application: Application) : AndroidViewModel(application) {
    private val _audios = MutableLiveData<ArrayList<Track>>()
    val audios: LiveData<ArrayList<Track>> = _audios

    init {
        _audios.value = ArrayList()
        MainScope().launch {
            withContext(Dispatchers.IO) {
                _audios.value?.addAll(
                    AppDatabase.getInstance(getApplication()).trackDao().getTracks()
                )
            }
            _audios.notifyObservers()
        }
    }

    suspend fun addTracks(paths: ArrayList<String>): ArrayList<Track> {
        val tracks = ArrayList<Track>()
        withContext(Dispatchers.IO) {
            val sizeOffset = _audios.value?.size ?: 0
            for ((position, path) in paths.withIndex()) {
                val track = createTrackFromPath(
                    path,
                    position + sizeOffset // offset to positions of new tracks
                )
                tracks.add(track)
            }
            AppDatabase.getInstance(getApplication()).trackDao().insertAll(tracks)
            _audios.value?.clear()
            _audios.value?.addAll(AppDatabase.getInstance(getApplication()).trackDao().getTracks())
        }
        _audios.notifyObservers()

        return tracks
    }

    private fun createTrackFromPath(path: String, position: Int): Track {
        val uri = Uri.fromFile(File(path))
        val helper = MetadataHelper(getApplication(), uri)
        var title = helper.getTitle() ?: "Unknown"
        val artist = helper.getAuthor() ?: "Unknown"
        val fileName = File(path).name.replace(".mp3", "")
        if (title == "Unknown" || artist == "Unknown")
            title = fileName
        return Track(position, title, artist, uri, helper.getDuration(), fileName)
    }

    suspend fun deleteTracks(tracks: ArrayList<Track>) {
        withContext(Dispatchers.IO) {
            AppDatabase.getInstance(getApplication()).trackDao().deleteAll(tracks)
        }

        _audios.value?.removeAll(tracks)
        val size = _audios.value?.size ?: 0
        // update positions
        for (i in 0 until size) {
            _audios.value!![i].position = i
        }

        withContext(Dispatchers.IO) {
            AppDatabase.getInstance(getApplication()).trackDao().updateAll(_audios.value!!)
        }

        _audios.notifyObservers()
    }

    suspend fun updatePositions(audios: ArrayList<Track>) {
        withContext(Dispatchers.IO) {
            AppDatabase.getInstance(getApplication()).trackDao().updateAll(audios)
        }
    }

    private fun <T> MutableLiveData<T>.notifyObservers() {
        this.value = this.value
    }
}