import 'dart:io';

void main() {
  double result = 0;

  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Cannot divide by zero.');
        return;
      }
      break;
    default:
      print('Error: Invalid operator.');
      return;
  }

  print('Result: $result');
}
