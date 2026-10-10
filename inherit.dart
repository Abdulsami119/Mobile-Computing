import 'dart:io';

abstract class Person {
  String name = "Ali";

  void display();
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
  Person s = Student();

  s.display();
}
