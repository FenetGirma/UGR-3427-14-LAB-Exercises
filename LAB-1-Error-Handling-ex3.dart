import 'dart:io';

void main() {
  try {
    final filePath = 'kebe.txt';
    final file = File(filePath);

    if (file.existsSync()) {
      final content = file.readAsStringSync();
      print("File content:\n$content");
    } else {
      print("Error: File not found at path: $filePath");
    }
  } catch (e) {
    print("Error reading file: $e");
  }
}
