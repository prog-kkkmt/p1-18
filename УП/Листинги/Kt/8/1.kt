import java.util.*

data class Result(var v1: MutableCollection<*>, var v2: MutableCol-lection<*>)
fun <T, C : MutableCollection<in T>, V : MutableCollection<in T>> Collection<out T>.partitionTo(v1 : C, v2 : V, 
                                                                                           f: (T) -> Boolean) : Result {
    var (first, second) = this.partition(f)
    v1.addAll(first)
    v2.addAll(second)
    return Result(v1, v2)
} 

fun partitionWordsAndLines() {
    val (words, lines) = listOf("a", "a b", "c", "d e").
            partitionTo(ArrayList<String>(), ArrayList()) { s -> !s.contains(" ") }
    words == listOf("a", "c")
    lines == listOf("a b", "d e")
}

fun partitionLettersAndOtherSymbols() {
    val (letters, other) = setOf('a', '%', 'r', '}').
            partitionTo(HashSet<Char>(), HashSet()) { c -> c in 'a'..'z' || c in 'A'..'Z'}
    letters == setOf('a', 'r')
    other == setOf('%', '}')
}
