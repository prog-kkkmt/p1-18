fun main() {
    val sum = {x: Int, y: Int -> 
        println("$x + $y")
        x + y // ��������� ������-��������� - ��������� ���������
    }
    println(sum(2,6))
}
