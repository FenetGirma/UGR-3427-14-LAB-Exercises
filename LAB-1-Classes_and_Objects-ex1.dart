class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});

  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }

  void updateAddress(String newAddress) {
    address = newAddress;
  }
}

void main() {
  var person1 = Person(name: "Maedot", age: 24, address: "Alemgena");

  print("Initial details:");
  person1.displayDetails();

  person1.updateAddress("Bole");

  print("\nUpdated details:");
  person1.displayDetails();
}
