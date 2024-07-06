void main() {
  print("Inicio del main");

  httpGet("").then((data) {
    print(data);
  }).catchError((error) {
    print("Error: $error");
  });

  print("Fin del main");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw "Error en la petición http";
    // return "Respuesta del servidor";
  });
}
