fun addValidNumbers(numbers: List<Int?>) {
    val validNumbers = numbers.filterNotNull()
    println("Sum of valid numbers: ${validNumbers.sum()}")
}

fun main() {
    val a: List<Int?> = arrayOf(1, 2, 3, null, 4, 5, 6).toList()
    addValidNumbers(a)
}
