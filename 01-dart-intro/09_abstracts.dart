void main() {
  final windPlant = WindPlant(energyLeft: 9);
  final nuclearPlant = NuclearPlant(energyLeft: 9);

  print('wind: ${chargePhone(windPlant)}');
  print('wind: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 10) {
    throw Exception('Not enough energy to charge the phone');
  } else {
    return plant.energyLeft - 10;
  }
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends o implements
class WindPlant extends EnergyPlant {
  WindPlant({required double energyLeft})
    : super(energyLeft: energyLeft, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Resultado fina de energia: $energyLeft';
  }
}

class NuclearPlant extends EnergyPlant {
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required double energyLeft})
    : super(energyLeft: energyLeft, type: PlantType.nuclear);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount * 0.5; // 10% de pérdida
  }
}
