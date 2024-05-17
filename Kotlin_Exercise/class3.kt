class ShoppingCart {
    private val items = mutableMapOf<String, Double>()

    fun addItem(itemName: String, price: Double) {
        if (items.containsKey(itemName)) {
            items[itemName] = items.getValue(itemName) + price
        } else {
            items[itemName] = price
        }
    }

    fun removeItem(itemName: String) {
        items.remove(itemName)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for ((_, price) in items) {
            totalPrice += price
        }
        return totalPrice
    }

    fun displayItems() {
        if (items.isEmpty()) {
            println("Your cart is empty.")
        } else {
            println("Items in your cart:")
            for ((item, price) in items) {
                println("$item - $price")
            }
        }
    }
}

fun main() {
    val cart = ShoppingCart()

    cart.addItem("Apples", 2.50)
    cart.addItem("Bananas", 1.20)
    cart.addItem("Milk", 3.00)

    cart.displayItems()

    val totalPrice = cart.calculateTotalPrice()
    println("Total price: $totalPrice")

    cart.removeItem("Apples")

    cart.displayItems()

    val updatedTotalPrice = cart.calculateTotalPrice()
    println("Updated total price: $updatedTotalPrice")
}
