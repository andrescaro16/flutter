void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print("windPlant: $windPlant");
  print("Phone energy: ${chargePhone(windPlant)}");
  print("windPlant: $windPlant");

  print("nuclearPlant: $nuclearPlant");
  print("Phone energy: ${chargePhone(nuclearPlant)}");
  print("nuclearPlant: $nuclearPlant");
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft >= 10) {
    plant.consumeEnergy(10);
    return 10;
  } else {
    return 0;
  }
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  @override
  String toString() {
    return 'EnergyPlant: {energyLeft: $energyLeft, type: $type}';
  }

  void consumeEnergy(double energy);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type;

  NuclearPlant({required this.energyLeft, this.type = PlantType.nuclear});

  @override
  String toString() {
    return 'EnergyPlant: {energyLeft: $energyLeft, type: $type}';
  }

  @override
  void consumeEnergy(double energy) {
    energyLeft -= (energy * 0.5);
  }
}
