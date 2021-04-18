// один конструктор
class A(val a: Int) {
    fun show() = println(a)
}

// несколько конструкторов
class B {
    constructor(a: Int) {
        println(a)
    }
    
    constructor(a: Int, b: Int) {
        println("$a $b")
    }
}

fun main() {
    val a = A(5) 
    a.show() // "5"
    
    val b1 = B(2) // "2"
    val b2 = B(2, 3) // "2 3"
}
