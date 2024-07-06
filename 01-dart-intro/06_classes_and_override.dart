void main() {
  // Instance of Hero class for Classic or Shorthand constructors
  // final List<Hero> heroes = [
  //   Hero("Batman", "Money"),
  //   Hero("Superman", "Everything"),
  //   Hero("Flash", "Speed")
  // ];

  // Instance of Hero class for Named constructor
  final List<Hero> heroes = [
    Hero(name: "Batman", power: "Money"),
    Hero(name: "Superman", power: "Everything"),
    Hero(name: "Flash", power: "Speed")
  ];

  for (Hero hero in heroes) {
    print(hero); // It calls the toString method
    // print("Hero: ${hero.name} - Power: ${hero.power}");
  }
}

class Hero {
  String name;
  String power;

  // Constructor 1 (Classic)
  // Hero(String pName, String pPower)
  //   : name = pName,
  //     power = pPower;

  // Constructor 2 (Shorthand)
  // Hero(this.name, this.power);

  // Constructor 3 (Named)
  Hero({required this.name, this.power = "No power"});

  @override
  String toString() {
    return "Hero: $name - Power: $power";
  }
}
