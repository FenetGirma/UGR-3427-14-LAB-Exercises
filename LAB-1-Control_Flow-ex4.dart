import 'dart:io';

void main() {
  print("Enter Your Grade: ");
  double grade = double.parse(stdin.readLineSync()!);

  String letterGrade;

  switch (grade) {
    case > 90.0:
      letterGrade = "A";
      break;
    case > 80.0:
      letterGrade = "B";
      break;
    case > 70.0:
      letterGrade = "C";
      break;
    case > 60.0:
      letterGrade = "D";
      break;
    default:
      letterGrade = "F";
  }

  print("GPA: $letterGrade");
}
