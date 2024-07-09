import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(
        text:
            'Hey, come to the office. Would be a pleasure to have you here 🌐',
        direction: MessageDirection.incoming),
    Message(text: 'Elon, See u there! 🚀', direction: MessageDirection.incoming)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: implement
  }
}
