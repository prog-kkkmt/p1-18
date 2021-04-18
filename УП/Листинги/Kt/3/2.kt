interface Clickable {
    fun click()
}

open class RichButton : Clickable { // ����� �����������
    fun disable() {} // ������ ��������������
    
    open fun animate() {} // ����� ��������������
    
    final override fun click() {} // ������ ��������������
}
