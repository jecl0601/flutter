void main() {
  emitNumbers().listen((number) {
    print('Número emitido: $number');
  });
}

Stream emitNumbers() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}