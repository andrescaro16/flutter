void main() {
  final Map<String, dynamic> pokemon = {
    "name": "Pikachu",
    "hp": 100,
    "isAlive": true,
    "habilities": <String>["Thunderbolt", "Quick Attack", "Iron Tail"],
    "sprites": <int, String>{
      1: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png",
      2: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png"
    }
  };

  print(pokemon);
  print("Name: ${pokemon["name"]}");
  print("Sprite 1: ${pokemon["sprites"][1]}");
  print("Sprite 2: ${pokemon["sprites"][2]}");
}
