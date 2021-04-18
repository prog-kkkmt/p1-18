fun countClicks(window: Window) {
    var clickCount = 0
    
    // объ€вление анонимного объекта, наследующего MouseAdapter
    window.addMouseListener(object : MouseAdapter() {
        override fun mouseClicked(e: MouseEvent) {
            clickCount++
        }
    })
}
