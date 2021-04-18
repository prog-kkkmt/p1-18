fun alphabet() = with(StringBuilder()) {
   for (letter in 'A'..'Z') {
       append(letter)
   }
   append("\n End of the alphabet")
   toString()
}

fun main() {
	println(alphabet())
}
