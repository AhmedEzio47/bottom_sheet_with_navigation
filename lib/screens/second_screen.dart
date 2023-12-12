import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String id = '/second_screen';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2'), centerTitle: true),
      body: const Center(
        child: Text("Second Screen"),
      ),
    );
  }
}
