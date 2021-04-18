import java.util.Scanner

fun main(args: Array<String>) {
    val reader = Scanner(System.`in`)

    val a = reader.nextInt()
    val b = reader.nextInt()
    var sum = 0
    for (i in a..b)
    	sum += i * i
    
    print(sum)
}
