import 'package:flutter/material.dart';
import 'package:spaceapps/widget/map.dart';

class MapButton extends StatelessWidget {
  final String title;
  final VoidCallback pressSelect;

  const MapButton({
    required this.title,
    required this.pressSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressSelect,
      child: Container(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 25,
          left: 25,
          right: 25,
        ),
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            const MapWidget(),
            Container(
              height: 400,
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
