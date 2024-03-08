class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});
}

class Student extends Person {
  int rollNumber;
  List<double> marks;

  Student({
    required String name,
    required int age,
    required String address,
    required this.rollNumber,
    required this.marks,
  }) : super(name: name, age: age, address: address);

  double calculateTotalMarks() {
    return marks.reduce((sum, mark) => sum + mark);
  }

  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return calculateTotalMarks() / marks.length;
  }

  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
  }
}

void main() {
  var student1 = Student(
    name: "Fenet",
    age: 23,
    address: "Sebeta",
    rollNumber: 1,
    marks: [100, 92, 100, 95],
  );

  print("My Details:");
  student1.displayDetails();

  print("\nTotal Marks: ${student1.calculateTotalMarks()}");
  print(
      "Average Marks: ${student1.calculateAverageMarks().toStringAsFixed(2)}");
}
