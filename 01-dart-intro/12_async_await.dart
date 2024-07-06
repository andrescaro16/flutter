void main() async {
  try {
    final value = await httpGet("");
    print("value: $value");
  } catch (err) {
    print("Tenemos un error: $err");
  }
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return "Respuesta del servidor";
}
