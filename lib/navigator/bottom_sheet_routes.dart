import 'package:flutter/material.dart';
import 'package:bottom_sheet_with_navigation/screens/first_screen.dart';
import 'package:bottom_sheet_with_navigation/screens/second_screen.dart';

class BottomSheetRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FirstScreen.id:
        return MaterialPageRoute(builder: (context) => const FirstScreen());
      case SecondScreen.id:
        return MaterialPageRoute(builder: (_) => const SecondScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
    );
  }
}
