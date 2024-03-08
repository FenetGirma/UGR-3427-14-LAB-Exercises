class Student {
  String name;
  List<double> marks;

  Student(this.name, this.marks);
  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    double totalMarks = marks.reduce((a, b) => a + b);
    return totalMarks / marks.length;
  }
}

void main() {
  var student1 = Student('Alexo', [85, 90, 78, 92]);
  var student2 = Student('Mare', [75, 88, 92]);

  print('${student1.name}\'s average mark: ${student1.calculateAverageMark()}');
  print('${student2.name}\'s average mark: ${student2.calculateAverageMark()}');
}
