data class MyDate(val year: Int, val month: Int, val dayOfMonth: Int) : Comparable<MyDate> {
    override fun compareTo(other : MyDate) : Int {
        if (this.year.compareTo(other.year) != 0)
            return this.year.compareTo(other.year)
        else if (this.month.compareTo(other.month) != 0)
            return this.month.compareTo(other.month)
        else
            return this.dayOfMonth.compareTo(other.dayOfMonth)
    }
}
