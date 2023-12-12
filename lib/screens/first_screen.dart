import 'package:flutter/material.dart';
import 'package:bottom_sheet_with_navigation/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  static const String id = '/first_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SecondScreen.id);
          },
          child: const Text('Go to Screen Two'),
        ),
      ),
    );
  }
}
