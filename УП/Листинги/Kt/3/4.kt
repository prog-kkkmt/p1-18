sealed class Expr {
    // перечисляются все возможные классы
    class Num(val value: Int) : Expr()
    class Sum(val left: Expr, val right: Expr) : Expr()
}

fun eval(e: Expr): Int =
    when(e) {
        // охватывает все возможные варианты -> ветка "else" не нужна
        is Expr.Num -> e.value
        is Expr.Sum -> eval(e.left) + eval(e.right)
    }
