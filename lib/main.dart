import 'package:flutter/material.dart';
import 'package:spaceapps/screenmanager.dart';
import 'package:spaceapps/screens/home_screen.dart';
import 'package:spaceapps/widget/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ometeotl',
      theme: ThemeData(),
      home: const HomeScreen()
    );
  }
}