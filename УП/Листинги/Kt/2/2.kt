fun factorial(n: Int) : Int {
    var result = 1

    for(d in 1..n) {
        result *= d
    }

    return result
}

fun main(args: Array<String>) {
    println(factorial(4))
    println(factorial(5))
    println(factorial(6))
}
