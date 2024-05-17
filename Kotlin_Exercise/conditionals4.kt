fun main() {
    val num1 = 15
    val num2 = 25
    val num3 = 10

    val largest: Int

    if (num1 >= num2) {
        if (num1 >= num3) {
            largest = num1
        } else {
            largest = num3
        }
    } else {
        if (num2 >= num3) {
            largest = num2
        } else {
            largest = num3
        }
    }

    println("The largest number among $num1, $num2, and $num3 is $largest.")
}
