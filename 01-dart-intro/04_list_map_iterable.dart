void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Reverse: ${numbers.reversed}');

  final reversedNumers =
      numbers.reversed; // Es un iterable porque tiene parentesis
  print('Iterable: $reversedNumers');
  print('List: ${reversedNumers.toList()}');
  print('Set: ${reversedNumers.toSet()}');

  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print('>5: ${numbersGreaterThan5}');
  print('>5: ${numbersGreaterThan5.toSet()}');
}
