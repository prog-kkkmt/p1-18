fun sign(x: Double) = when {
    x < 0 -> -1
    x > 0 -> 1
    else -> 0
}

fun main() {
    println(sign(-10.0))
    println(sign(0.0))
    println(sign(10.0))
}
