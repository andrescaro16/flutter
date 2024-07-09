enum MessageDirection {
  incoming,
  outgoing,
}

class Message {
  final String text;
  final String? imageUrl;
  final MessageDirection direction;

  Message(
      {required this.text, this.imageUrl, required this.direction});
}
