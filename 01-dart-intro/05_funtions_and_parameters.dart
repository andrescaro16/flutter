void main() {
  print(greetEveryone());
  print(greetEveryoneArrow());
  print(add(5, 5));
  print(addArrow(5, 7));
  print(addOptional(3));
  print(greetPerson(name: "Andrés"));
}

// Function
String greetEveryone() {
  return "Hello everyone!";
}

// Arrow function
String greetEveryoneArrow() => "Hello everyone from Arrow!";

// Function with parameters
int add(int a, int b) {
  return a + b;
}

// Arrow function with parameters
int addArrow(int a, int b) => a + b;

// Function with optional parameters
int addOptional(int a, [int b = 1]) {
  return a + b;
}

// Function with optional parameters 2
int addOptional2(int a, [int? b]) {
  // b = b ?? 1;
  b ??= 1;
  return a + b;
}

// Function with named parameters
String greetPerson({required String name, String message = "Hello,"}) {
  return "$message $name!";
}
