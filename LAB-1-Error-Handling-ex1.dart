import 'dart:io';

void main() {
  try {
    print("Enter a number:");
    final userInput = stdin.readLineSync();
    final parsedNumber = int.parse(userInput!); // Convert to integer

    print("You entered: $parsedNumber");
  } catch (e) {
    print("Error: Invalid input. Please enter a valid integer.");
  }
}
