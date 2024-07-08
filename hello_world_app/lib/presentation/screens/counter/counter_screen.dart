import 'package:flutter/material.dart';

void main() => runApp(const CounterScreen());

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(child: Text('Counter Screen')),
        ));
  }
}
