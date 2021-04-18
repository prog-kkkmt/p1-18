// Инициализация объекта при создании
fun createViewWithCustomAttributes(context : Context ) = 
	TextView(context).apply { 
        text = "Samp le Text" 
        textSize = 20.0 
        setPadding(10, 0, 0, 0)
}

