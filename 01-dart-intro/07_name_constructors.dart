void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };

  /* final Hero ironMan = Hero(
    name: 'Tony Stark',
    power: 'Money',
    isAlive: rawJson['isAlive'] ?? false
  ); */

  final Hero ironMan = Hero.fromJson(rawJson);

  print(ironMan);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    // TODO: implement toString
    return '$name, $power ${isAlive ? 'is alive' : 'is dead'}';
  }
}
