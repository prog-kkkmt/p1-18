fun main() {
    val numbers = arrayOf(1, 2, 3, 4, 5)
    
    val isEven = {x: Int -> x % 2 == 0}
    
    println(numbers.any(isEven)) // true
    println(numbers.all(isEven)) // false
    println(numbers.count(isEven)) // 2
    println(numbers.find(isEven)) // 2
}
