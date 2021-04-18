fun twoAndThree(operation: (Int, Int) -> Int) {
    val result = operation(2, 3)
    println("The result is $result")
}

fun main() {
    twoAndThree({ a, b -> a + b }) // The result is 5
    // Передача функции в качестве последнего аргумента
    twoAndThree { a, b -> a * b } // The result is 6
}

