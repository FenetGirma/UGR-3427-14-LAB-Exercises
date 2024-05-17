fun main() {
    val side1 = 5.0
    val side2 = 5.0
    val side3 = 5.0

    val triangleType = when {
        side1 == side2 && side2 == side3 -> "Equilateral"
        side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
        else -> "Scalene"
    }

    println("The triangle is $triangleType.")
}
