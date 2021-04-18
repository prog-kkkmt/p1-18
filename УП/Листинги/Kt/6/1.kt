data class Point(val x: Int, val y: Int) {
    operator fun plus(other: Point): Point {
        return Point(x + other.x, y + other.y)
    }
}

// Перегрузка через функцию-расширение
operator fun Point.minus(other: Point): Point {
    return Point(x - other.x, y - other.y)
} 

fun main() {
    val p1 = Point(10, 10)
    val p2 = Point(2, 5)
    println(p1 + p2) // Point(x=12, y=15)
    println(p1 - p2) // Point(x=8, y=5)
}

