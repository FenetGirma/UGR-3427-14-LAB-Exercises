double divideNumbers(double numerator, double denominator) {
  try {
    return numerator / denominator;
  } catch (e) {
    print("Error: An unexpected error occurred.");
    return double.nan;
  }
}

void main() {
  final num1 = 10.0;
  final num2 = 0.0;

  final result = divideNumbers(num1, num2);
  if (!result.isNaN) {
    print("Result: $result");
  } else {
    print("Result: Division by zero (infinity)");
  }
}
