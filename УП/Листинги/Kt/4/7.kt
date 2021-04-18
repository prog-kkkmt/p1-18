fun main() {
    val numbers = arrayOf(1, 2, 3, 4, 5)
    
    val isEven = {x: Int -> x % 2 == 0}
    
    println(numbers.groupBy(isEven))
    // Output: {false=[1, 3, 5], true=[2, 4]}
}

