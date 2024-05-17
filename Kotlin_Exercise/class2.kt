class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side2 == side3 || side1 == side3
    }

    fun isScalene(): Boolean {
        return side1 != side2 && side2 != side3 && side1 != side3
    }
}

fun main() {
   
    val triangle1 = Triangle(5.0, 5.0, 5.0) 
    val triangle2 = Triangle(4.0, 4.0, 3.0) 
    val triangle3 = Triangle(3.0, 4.0, 5.0) 
    
    val type1 = if (triangle1.isEquilateral()) "Equilateral" else if (triangle1.isIsosceles()) "Isosceles" else "Scalene"
    val type2 = if (triangle2.isEquilateral()) "Equilateral" else if (triangle2.isIsosceles()) "Isosceles" else "Scalene"
    val type3 = if (triangle3.isEquilateral()) "Equilateral" else if (triangle3.isIsosceles()) "Isosceles" else "Scalene"
    
    
    println("Triangle 1 is $type1")
    println("Triangle 2 is $type2")
    println("Triangle 3 is $type3")
}
