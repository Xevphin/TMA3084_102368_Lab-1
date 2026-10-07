import "dart:io";

void main() {
  print("Please input your name: ");
  String? name = stdin.readLineSync();

  print("Please enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  print("Please enter your CGPA:");
  double cgpa = double.parse(stdin.readLineSync()!);

  print("Your name is $name");
  print("Your age is $age");
  print("Your CGPA is $cgpa");
}