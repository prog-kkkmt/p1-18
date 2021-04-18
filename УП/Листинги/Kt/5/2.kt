fun printAllCaps(s: String?) {
    val allCaps: String? = s?.toUpperCase()
    println(allCaps)
}

fun main() {
    val s1: String? = null
    val s2: String = "Kotlin"
    printAllCaps(s1) // null
    printAllCaps(s2) // KOTLIN
}
