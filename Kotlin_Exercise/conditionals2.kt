fun main() {
    val regularHours = 40
    val overtimeMultiplier = 1.5

    val hoursWorked = 45.0
    val hourlyRate = 20.0

    val regularPay = if (hoursWorked <= regularHours) {
        hoursWorked * hourlyRate
    } else {
        regularHours * hourlyRate
    }

    val overtimePay = if (hoursWorked > regularHours) {
        (hoursWorked - regularHours) * hourlyRate * overtimeMultiplier
    } else {
        0.0
    }

    val totalSalary = regularPay + overtimePay

    println("Hours Worked: $hoursWorked")
    println("Hourly Rate: $$hourlyRate")
    println("Regular Pay: $$regularPay")
    println("Overtime Pay: $$overtimePay")
    println("Total Salary: $$totalSalary")
}
