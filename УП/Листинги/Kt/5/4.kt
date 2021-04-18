class Person(val firstName: String, val lastName: String) {
    override fun equals(o: Any?): Boolean {
        val otherPerson = o as? Person ?: return false
        
        // здесь объект уже приведен к типу Person
        return otherPerson.firstName == firstName &&
        	otherPerson.lastName == lastName
    }
}
