import 'package:flutter/material.dart';

import 'bottom_sheet_routes.dart';

final nestedNavigatorKey = GlobalKey<NavigatorState>();

class NestedNavigator extends StatelessWidget {
  const NestedNavigator({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: nestedNavigatorKey,
      onGenerateRoute: BottomSheetRoutes.generateRoute,
      onGenerateInitialRoutes: (navigator, initialRoute) => [
        MaterialPageRoute(builder: (context) => child),
      ],
    );
  }
}
