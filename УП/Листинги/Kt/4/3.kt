fun main() {
    val sum = {x: Int, y: Int -> 
        println("$x + $y")
        x + y // результат лямбда-выражения - последнее выражение
    }
    println(sum(2,6))
}
