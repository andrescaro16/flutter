void main() {
  final String pokemon = "Pikachu";

  final int hp = 100;

  final bool isAlive = true;
  // bool? isAlive; // null safety

  final habilities = ["Thunderbolt", "Quick Attack", "Iron Tail"];
  // final habilities = <String>["Thunderbolt", "Quick Attack", "Iron Tail"];
  // final List<String> habilities = ["Thunderbolt", "Quick Attack", "Iron Tail"];
  // final List<String> habilities = <String>["Thunderbolt", "Quick Attack", "Iron Tail"];
  final List<String> sprites = [
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png"
  ];

  // dynamic puede ser null
  // dynamic siempre será dynamic
  dynamic errorMessage = "Hola";
  errorMessage = 100;
  errorMessage = true;
  errorMessage = null;
  errorMessage = () => true;
  errorMessage = ["Hola", "Mundo"];
  errorMessage = {"name": "Andrés", "age": 26};

  print("""
$pokemon
$hp
$isAlive
$habilities
$sprites
$errorMessage
""");
}
