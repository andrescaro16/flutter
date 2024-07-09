import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class IncomingMessageBubble extends StatelessWidget {
  final Message message;

  const IncomingMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final maxWidth = MediaQuery.of(context).size.width * 0.8;

    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Column(
          children: [
            const SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                color: colors.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  message.text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 6),
            _ImageBubble(),
            const SizedBox(height: 3),
          ],
        ),
      ),
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/5-64c2804cc48057b94fd0b3eaf323d92c.gif',
        width: size.width * 0.8,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          // Forma 1
          if (loadingProgress == null) {
            return child;
          }

          return Container(
            width: size.width * 0.8,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Center(child: Text('The Goat is sending a gif...')),
          );

          // Forma 2
          // if (loadingProgress == null) {
          //   return child;
          // }

          // return const Center(
          //   child: CircularProgressIndicator(),
          // );

          // Forma 3
          // if (loadingProgress == null) {
          //   return child;
          // }
          // return Center(
          //   child: CircularProgressIndicator(
          //     value: loadingProgress.expectedTotalBytes != null
          //         ? loadingProgress.cumulativeBytesLoaded /
          //             loadingProgress.expectedTotalBytes!
          //         : null,
          //   ),
          // );
        },
      ),
    );
  }
}
