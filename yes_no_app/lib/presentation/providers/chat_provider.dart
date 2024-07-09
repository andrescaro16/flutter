import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(
        text:
            'Hey, come to the office. Would be a pleasure to have you here 🌐',
        direction: MessageDirection.incoming),
    Message(text: 'Elon, See u there! 🚀', direction: MessageDirection.outgoing)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: implement
    final newMessage =
        Message(text: text, direction: MessageDirection.outgoing);
    messageList.add(newMessage);
    notifyListeners();
  }
}
