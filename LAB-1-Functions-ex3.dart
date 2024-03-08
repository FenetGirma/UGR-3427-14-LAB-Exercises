void main() {
  String inputString = "Dear Fenu.";

  String reversedString = reverseString(inputString);

  print("Reversed string: $reversedString");
}

String reverseString(String input) {
  List<String> characters = input.split('');
  List<String> reversedCharacters = characters.reversed.toList();
  String reversedString = reversedCharacters.join('');

  return reversedString;
}
