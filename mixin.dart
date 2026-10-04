class Student {
  String name = "Ayesha";
}

mixin Sports {
  void play() {
    print("Playing football");
  }
}

class CollegeStudent extends Student with Sports {
}

void main() {
  CollegeStudent s = CollegeStudent();

  print(s.name);
  s.play();
}