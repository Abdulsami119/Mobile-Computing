import 'dart:io';

class Student {
  String _name = "ali";
  int _age = 20;
  String _department = "CS";

  Student() {
    _name = "sami";
    _age = 20;
    _department = "CS";
  }

  Student.withDetails(this._name, this._age, this._department); // Named constructor

  void setName(String name) {
    this._name = name;
  }

  void setAge(int age) {
    if (age > 10 && age < 80) {
      this._age = age;
    } else {
      print("Age must be between 10 and 80.");
    }
  }

  void setDepartment(String department) {
    this._department = department;
  }

  String getName() => this._name;

  int getAge() => this._age;

  String getDepartment() => this._department;
}

void main() {
  Student student = Student();
  Student student2 = Student.withDetails("Ali", 20, "CS");
  print("Name: ${student.getName()}");
  print("Age: ${student.getAge()}");
  print("Department: ${student.getDepartment()}");

  student.setName("Ali");

  print("Updated Name: ${student.getName()}");
}
