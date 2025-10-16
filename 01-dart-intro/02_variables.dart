void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final abilities = <String>['impostor'];
  final List<String> weapons = ['impostor'];

  // dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $errorMessage
  $weapons""");
}