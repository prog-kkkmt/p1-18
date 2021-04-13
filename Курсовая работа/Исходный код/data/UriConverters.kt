package com.kmem.myplayer.data

import android.net.Uri
import androidx.room.TypeConverter

/**
 * Конвертер данных: URI <--> String.
 */

class UriConverters {
    @TypeConverter
    fun fromString(value: String): Uri {
        return Uri.parse(value)
    }

    @TypeConverter
    fun toString(uri: Uri): String {
        return uri.toString()
    }
}