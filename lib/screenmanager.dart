import 'package:flutter/material.dart';
import 'package:spaceapps/screens/explain_screen.dart';

class ScreenManager extends StatelessWidget {
  const ScreenManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExplainScreen(),
    );
  }
}
