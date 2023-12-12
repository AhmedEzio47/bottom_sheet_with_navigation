import 'package:flutter/material.dart';
import 'package:bottom_sheet_with_navigation/screens/first_screen.dart';

import '../navigator/navigator.dart';
import 'drag_down_indicator.dart';

class MyBottomSheet extends StatelessWidget {
  static const String id = '/MyBottomSheet';

  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MyBottomSheetBody();
  }
}

class _MyBottomSheetBody extends StatelessWidget {
  const _MyBottomSheetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisSize: MainAxisSize.min, children: [
      DragDownIndicator(),
      Expanded(child: NestedNavigator(child: FirstScreen()))
    ]);
  }
}
