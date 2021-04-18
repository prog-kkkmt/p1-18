fun <T> Collection<T>.joinToString(
		separator: String = ", ",
		prefix: String = "",
		postfix: String = "",
		transform: ((T) -> String)? = null
): String {
    val result = StringBuilder(prefix)
    
    for ((index, element) in this.withIndex()) {
        if (index > 0) result.append(separator)
        val str = transform?.invoke(element)
        	?: element.toString()
        result.append(str)
    }
    
    result.append(postfix)
    return result.toString()
}

fun main() {
    val languages = listOf("Kotlin", "Java", "Python")
    
    println(languages.joinToString()) // Kotlin, Java, Python
    
    println(languages.joinToString { it.toLowerCase()}) // kotlin, java, python
    
    println(languages.joinToString(separator = "|", 
            transform = { it.toUpperCase() })) // KOTLIN|JAVA|PYTHON
}
