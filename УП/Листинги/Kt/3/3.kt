abstract class Animated {
    abstract fun animate() // должен быть переопределен
    
    // по умолчанию функции закрыты (нельзя переопределить)
    open fun stopAnimating() { } 
    
    fun animateTwice() { }
}
