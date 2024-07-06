void main() async {
  try {
    final value = await httpGet("");
    print("Éxito: $value");
  } on Exception catch (err) {
    print("Tenemos una Exception: $err");
  } catch (err) {
    print("Tenemos un error: $err");
  } finally {
    print("Fin del try y catch");
  }
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  // throw Exception("Error en la petición http");
  // throw "Error en la petición http";
  return "Respuesta del servidor";
}
