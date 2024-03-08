import 'dart:math';

void main() {
  final random = Random();
  final length = 10;

  final randomNumbers = List<int>.generate(length, (_) => random.nextInt(100));
  final uniqueNumbers = {...randomNumbers};

  print("Random Numbers: $randomNumbers");
  print("Unique Numbers: $uniqueNumbers");
}
