fun isPalindrome(number: Int): Boolean {
    var num = number
    var reverse = 0
    var originalNumber = num

    while (num > 0) {
        val digit = num % 10
        reverse = reverse * 10 + digit
        num /= 10
    }
    
    return originalNumber == reverse
}

fun main() {
    print("Enter a number: ")
    val number = readLine()!!.toInt()

    if (isPalindrome(number)) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
