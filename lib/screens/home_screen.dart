import 'package:flutter/material.dart';
import 'package:bottom_sheet_with_navigation/widgets/my_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => showMyBottomSheet(context),
        child: Center(
          child: ElevatedButton(
            onPressed: () => showMyBottomSheet(context),
            child: const Text('Open bottom sheet'),
          ),
        ),
      ),
    );
  }

  void showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (context) => const MyBottomSheet());
  }
}
