import java.util.Scanner

fun main() {
    val reader = Scanner(System.`in`)
    
    val n = reader.nextInt()
    var s = 3
    var i = 1
    while (s < n) {
        s *= 3
        i++
    }
    
    println(i)
}
