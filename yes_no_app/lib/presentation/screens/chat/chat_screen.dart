import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/incoming_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/outgoing_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://fotografias.lasexta.com/clipping/cmsimages02/2022/05/03/6F9C82A4-0FA4-40F9-BE2F-87F8DBBC1224/elon-musk-met-gala_103.jpg?crop=1407,1055,x0,y18&width=1200&height=900&optimize=low&format=webply')),
        ),
        title: const Text('Goat💲📈'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const IncomingMessageBubble()
                    : const OutgoingMessageBubble();
              },
            )),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
