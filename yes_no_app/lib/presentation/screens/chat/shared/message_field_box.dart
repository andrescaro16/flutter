import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print('Valor de la caje de texto: ');
          },
        ));

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submitted value: $value');
      },
      onChanged: (value) {
        print('Changed value: $value');
      },
    );
  }
}
