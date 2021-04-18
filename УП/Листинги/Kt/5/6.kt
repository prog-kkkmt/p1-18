fun sendEmailTo(email: String) {
    println("Send message to $email")
}

fun main() {
    var email: String? = "example@mail.com"
    // String? -> String
    email?.let { sendEmailTo(it) } // Send message to exam-ple@mail.com
    email = null
    email?.let { sendEmailTo(it) } // Выражение в лямбде не выполнит-ся
}
