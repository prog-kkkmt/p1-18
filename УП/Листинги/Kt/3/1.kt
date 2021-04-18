interface Clickable {
    fun click()
    fun showOff() = println("I'am clickable")
}

interface Focusable {
    fun showOff() = println("I'am focusable")
}

class Button : Clickable, Focusable {
    override fun click() = println("Button is clicked")
    
    // ����������� ��� ���������� ���� ���������� � ����������� �� ���������
    override fun showOff() {
        super<Clickable>.showOff()
        super<Focusable>.showOff()
    }
}

fun main() {
    val b = Button()
    b.click()
    b.showOff()
}
