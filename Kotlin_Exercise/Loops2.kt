fun findPrimes(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()

    var currentNum = start
    while (currentNum <= end) {
        if (currentNum > 1) {
            var isPrime = true
            var divisor = 2
            while (divisor <= Math.sqrt(currentNum.toDouble())) {
                if (currentNum % divisor == 0) {
                    isPrime = false
                    break
                }
                divisor++
            }
            if (isPrime) {
                primes.add(currentNum)
            }
        }
        currentNum++
    }
    return primes
}

fun main() {
    print("Enter the start of the range: ")
    val startRange = readLine()!!.toInt()
    print("Enter the end of the range: ")
    val endRange = readLine()!!.toInt()

    println("Prime numbers between $startRange and $endRange are:")
    val primeNumbers = findPrimes(startRange, endRange)
    println(primeNumbers)
}
