import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(
        text:
            'Hey, come to the office. Would be a pleasure to have you here 🌐',
        direction: MessageDirection.incoming),
        
    Message(text: 'Elon, See u there! 🚀', direction: MessageDirection.outgoing)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage =
        Message(text: text, direction: MessageDirection.outgoing);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      incomingMessage();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }

  Future<void> incomingMessage() async {
    final newMessage = await getYesNoAnswer.getAnswer();
    messageList.add(newMessage);
    notifyListeners();
  }
}
