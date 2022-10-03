import 'dart:math';

import 'package:flutter/material.dart';

class RainBoxCard extends StatelessWidget {
  final String text;
  final String image;

  RainBoxCard({
    super.key,
    required this.text,
    required this.image,
  });

  IconData icon = const Icon(Icons.home) as IconData;
  String rainTextDescription = "";

  String filterRain(number) {

    int number = 0 + Random().nextInt(0 - 2);

    if (number == 0) {
      rainTextDescription == "It is sunny outside";
      icon = const Icon(Icons.sunny) as IconData;
      return rainTextDescription;
    } else if (number == 1) {
      rainTextDescription == "It is raining, be careful";
      icon = const Icon(Icons.water_drop) as IconData;
      return rainTextDescription;
    } else if (number == 2) {
      rainTextDescription == "There is a big storm, don't go outside";
      icon = const Icon(Icons.storm) as IconData;

      return rainTextDescription;
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.white, size: 20),
                const SizedBox(width: 7),
                Flexible(
                  child: Text(
                    text,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(
                  Icons.sunny,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    "You can go outside",
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
