void main() {
  String? name;
  String? department;
  int marks = 65;

  // If name is empty, show Guest Student
  String studentName = name ?? "Guest Student";

  // Give department a default value if it is null
  department ??= "General";

  String status = marks >= 50 ? "Pass" : "Fail";

  print("Name: $studentName");
  print("Department: $department");
  print("Status: $status");
}
