import 'dart:io';

void result(
  String name, { // Required parameter
  String department =
      "Computer Science", // Optional parameter with default value
  int marks = 0, // Optional parameter with default value
}) {
  print("Name: $name");
  print("Department: $department");
  print("Marks: $marks");
}

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your marks: ");
  int marks = int.parse(stdin.readLineSync()!);
  result(name, marks: marks);
}
