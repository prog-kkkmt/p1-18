fun String.filter(predicate: (Char) -> Boolean): String {
    val sb = StringBuilder()
    for (index in 0 until length) {
        val element = get(index)
        if (predicate(element)) sb.append(element)
    }
    return sb.toString()
}

fun main() {
    val s = "321kotlinlanguage123"
    println(s.filter { it in 'a'..'z' }) //kotlinlanguage
}
