import 'dart:io';

class Person {
  String name = "Ali";

  void display() {
    print("Name: $name");
  }
}

class Student extends Person {
  int rollNo = 101;

  @override
  void display() {
    print("Name: $name");
    print("Roll No: $rollNo");
  }
}

void main() {
  Student s = Student();

  s.display();
}
