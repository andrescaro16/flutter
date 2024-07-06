void main() {
  // List
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 10];

  print("List original $numbers");
  print("length: ${numbers.length}");
  print("Index 0: ${numbers[0]}");
  print("First: ${numbers.first}");
  print("Last: ${numbers.last}");
  print("Reversed: ${numbers.reversed}");

  // Iterable
  final reversedNumbers = numbers.reversed;
  print("Iterable: $reversedNumbers");
  print("List: ${reversedNumbers.toList()}");

  final numbersGreaterThanFive = numbers.where((num) => num > 5);
  final numbersGreaterThanEight = numbers.where((int num) {
    return num > 8;
  });
  print("Numbers greater than 5: $numbersGreaterThanFive");
  print("Numbers greater than 8: $numbersGreaterThanEight");

  // Set
  final uniqueNumbers = numbers.toSet();
  print("Set: $uniqueNumbers");
}
