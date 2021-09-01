import java.util.*


fun menu() {
    println("[0] Выход")
    println("[1] Количество полностью свободных номеров, то есть тех, в которых не поселены граждане")
    println("[2] Сравнительная степень занятости (в процентах) номеров по категориям")
    println()
}

fun main() {
    val sc = Scanner(System.`in`)
    val db = DataBase("hotel.db")

    var n = -1
    while (n != 0) {
        menu()
        print("Введите число => ")
        n = sc.nextInt()
        when (n) {
            1 -> println("Свободных номеров: ${db.getAvailableRooms()}")
            2 -> {
                println("Сравнительная степень занятости номеров по категориям:")
                db.getDegreeEmployment().forEach { (key, value) -> println("$key - $value") }
            }
        }
        println()
    }
}