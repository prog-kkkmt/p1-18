data class Point(val x: Int, val y: Int)

operator fun Point.get(index: Int): Int {
    return when(index) {
        0 -> x
        1 -> y
        else ->
        	throw Exception("Invalid coordinate $index")
    }
} 

data class MutablePoint(var x: Int, var y: Int)

operator fun MutablePoint.set(index: Int, value: Int) {
    when(index) {
        0 -> x = value
        1 -> y = value
        else ->
        	throw Exception("Invalid coordinate $index")
    }
} 

fun main() {
    val p1 = Point(10, 5)
    println(p1[1]) // 5
    val p2 = MutablePoint(2, 2)
    p2[0] = 5
    println(p2) // MutablePoint(x=5, y=2)
}
