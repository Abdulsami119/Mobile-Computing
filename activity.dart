import 'dart:io';

class Person {
  String name = "";

  void introduce() {
    print("My name is $name.");
  }
}

mixin SportsPlayer on Person {
  void playSport() {
    print("$name is playing football.");
  }
}

mixin Coder on Person {
  void writeCode() {
    print("$name is writing Dart code.");
  }
}

class Teacher extends Person with Coder {}

void main() {
  Teacher teacher = Teacher();

  teacher.name = "Sami";

  teacher.introduce();
  teacher.writeCode();
}
