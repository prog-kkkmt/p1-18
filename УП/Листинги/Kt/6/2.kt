data class Point(val x: Int, val y: Int)

operator fun Point.times(scale: Double): Point {
    return Point((x * scale).toInt(), (y * scale).toInt())
} 

fun main() {
    val p1 = Point(10, 10)
    println(p1 * 2.5) // Point(x=25, y=25)
}
