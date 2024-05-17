fun main() {
    val month = 5 
    val day = 15   

    val season = when {
        (month == 12 && day >= 21) || (month in 1..2) || (month == 3 && day <= 19) -> "Winter"
        (month == 3 && day >= 20) || (month in 4..5) || (month == 6 && day <= 20) -> "Spring"
        (month == 6 && day >= 21) || (month in 7..8) || (month == 9 && day <= 21) -> "Summer"
        (month == 9 && day >= 22) || (month in 10..11) || (month == 12 && day <= 20) -> "Autumn"
        else -> "Invalid date"
    }

    println("The season is $season.")
}
