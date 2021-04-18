enum class Delivery {STANDART, EXPEDITED}

class Order(val itemCount: Int)

fun getShippingCostCalculator(
		delivery: Delivery): (Order) -> Double {
    if (delivery == Delivery.EXPEDITED) {
        return { order -> 6 + 2.1 * order.itemCount }
    }
    
    return { order -> 1.2 * order.itemCount}
}

fun main() {
    val calculator1 =
    	getShippingCostCalculator(Delivery.EXPEDITED)
    val calculator2 =
    	getShippingCostCalculator(Delivery.STANDART)
    println("Shipping costs ${calculator1(Order(3))}")
    // Output: "Shipping costs 12.3" 
    println("Shipping costs ${calculator2(Order(3))}")
    // Output: "Shipping costs 3.59" 
}
