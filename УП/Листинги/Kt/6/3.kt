data class Point(val x: Int, val y: Int)

operator fun Point.unaryMinus(): Point {
    return Point(-x, -y)
} 

fun main() {
    val p1 = Point(10, 10)
    println(-p1) // Point(x=-10, y=-10)
}
