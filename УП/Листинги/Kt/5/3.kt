fun strLenSafe(s: String?) = s?.length ?: 0

fun main() {
    val s1: String? = null
    val s2: String = "Kotlin"
    println(strLenSafe(s1)) // 0
    println(strLenSafe(s2)) // 6
}
