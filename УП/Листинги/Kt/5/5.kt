fun igroneNulls(s: String?) {
    // Возникнет исключение, если s == null
    val sNotNull: String = s!! 
    println(sNotNull.length)
}
