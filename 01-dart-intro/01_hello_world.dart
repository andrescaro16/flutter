void main() {
  // var myName = "Andrés";

  // final: se asigna el valor en tiempo de ejecución
  // late final String myName;
  // final myName = "Andrés";

  // const: se asigna el valor en tiempo de compilación/construcción
  // const myName = "Andrés";

  String myName = "Andrés";

  // Interpolación de strings
  print("Hola, mi nombre es $myName");

  // Interpolación de strings con métodos
  print("Hola, mi nombre es ${myName.toUpperCase()}");
}
