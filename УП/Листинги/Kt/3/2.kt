interface Clickable {
    fun click()
}

open class RichButton : Clickable { // можно наследовать
    fun disable() {} // нельзя переопределить
    
    open fun animate() {} // можно переопределить
    
    final override fun click() {} // нельзя переопределить
}
