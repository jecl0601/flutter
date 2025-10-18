void main() {
  final wolverine = new Hero(name: 'Logan');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  /*
  Hero(String pName, String pPower) {
    this.name = pName;
    this.power = pPower;
  }
  */

  // Hero(String pName, String pPower) : this.name = pName, this.power = pPower;

  @override
  String toString() {
    // TODO: implement toString
    return '${name} - ${power}';
  }
}
