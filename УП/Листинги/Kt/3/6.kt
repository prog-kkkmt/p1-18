class A {
    // ������ ������������ ������� � ��������� � Java
    companion object {
       fun bar() = println("Companion object called") 
       val a = 22
    } 
}

fun main() {
    A.bar()
    println(A.a)
}
