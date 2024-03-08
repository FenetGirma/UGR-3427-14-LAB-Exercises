import 'dart:io';
import 'dart:math';

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print("Enter the upper limit (N) to find prime numbers from 1 to N:");
  int? N = int.tryParse(stdin.readLineSync()!);

  if (N == null || N < 1) {
    print("Invalid input. Please enter a positive integer.");
    return;
  }

  print("Prime numbers from 1 to $N:");
  for (int i = 2; i <= N; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}
