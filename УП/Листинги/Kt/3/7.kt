fun countClicks(window: Window) {
    var clickCount = 0
    
    // ���������� ���������� �������, ������������ MouseAdapter
    window.addMouseListener(object : MouseAdapter() {
        override fun mouseClicked(e: MouseEvent) {
            clickCount++
        }
    })
}
