void main() {
  // Instance of Hero class with Classic constructor
  final Hero ironman = Hero(name: "Ironman", power: "Money", isAlive: true);

  // Instance of Hero class with Named constructor
  final Map<String, dynamic> rawJson = {
    "name": "Hulk",
    "power": "Strength",
    "isAlive": true
  };
  final Hero hulk = Hero.fromJson(rawJson);

  print(ironman);
  print(hulk);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "No name provided",
        power = json["power"] ?? "No power provided",
        isAlive = json["isAlive"] ?? "No status provided";

  @override
  String toString() {
    return "Hero: $name - Power: $power - Is alive: ${isAlive ? "Yes" : "No"}";
  }
}
