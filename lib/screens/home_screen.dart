import 'package:flutter/material.dart';
import 'package:spaceapps/screens/explain_screen.dart';
import 'package:spaceapps/widget/map.dart';
import 'package:spaceapps/widget/mapbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: ListView(
        children: [
          MapButton(
            title: "HI",
            pressSelect: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const MapWidget()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
