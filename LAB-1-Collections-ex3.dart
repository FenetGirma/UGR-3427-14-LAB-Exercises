void main() {
  final studentMarks = <String, int>{};
  studentMarks['Fenu'] = 85;
  studentMarks['kebe'] = 92;
  studentMarks['Mare'] = 78;

  studentMarks.putIfAbsent('Tesfa', () => 95);

  print("Student Marks:");
  studentMarks.forEach((name, marks) {
    print("$name: $marks");
  });

  final studentName = 'Yakob';
  if (studentMarks.containsKey(studentName)) {
    final marks = studentMarks[studentName];
    print("$studentName has $marks marks.");
  } else {
    print("$studentName not found in the map.");
  }
}
