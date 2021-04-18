data class Point(val x: Int, val y: Int)
data class Rectangle(val lowerLeft: Point, val upperRight: Point)

operator fun Rectangle.contains(p: Point): Boolean {
    return p.x in lowerLeft.x until upperRight.x &&
    	   p.y in lowerLeft.y until upperRight.y
}

fun main() {
    val rect = Rectangle(Point(0, 0), Point(20, 20))
    println(Point(2, 2) in rect) // true
    println(Point(25, 10) in rect) // false
}
