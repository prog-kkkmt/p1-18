operator fun MyDate.rangeTo(other: MyDate) = DateRange(this, other)

class DateRange(val start: MyDate, val end: MyDate) : Itera-ble<MyDate> {
    override fun iterator() : Iterator<MyDate> {
        return DateRangeIterator(start, end)
    }
}

class DateRangeIterator(val start: MyDate, val end: MyDate) : Itera-tor<MyDate> {
    private var current = start
    
    override fun next() : MyDate {
        val prev = current
        current = current.nextDay()
        return prev
    }
    
    override fun hasNext() : Boolean {
        return current <= end
    }
}
