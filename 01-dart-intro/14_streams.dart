void main() {
  emitNumbers().listen((value) {
    print("Stream listen: $value");
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
