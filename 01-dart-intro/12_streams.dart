void main() {
  emitNumbers().listen((number) {
    print('Número emitido: $number');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('desde periodic $value');
    return value + 1;
  }).take(5);
}
