import 'dart:io';

int addNumbers(int a, int b) => a + b;

void main() {
  //add numbers and int input
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);
  int result = addNumbers(num1, num2);
  stdout.writeln("The sum is: $result");

  //anonymous function
  var multiply = (int a, int b) => a * b;
  int num3 = 5;
  int num4 = 10;
  int result2 = multiply(num3, num4);
  stdout.writeln("The product is: $result2");

  //String input and output
  stdout.write("Enter the string: ");
  String? stringg = stdin.readLineSync();
  stdout.writeln("The string is: $stringg");
}
