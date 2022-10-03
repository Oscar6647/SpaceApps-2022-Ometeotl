import 'package:flutter/material.dart';
import 'package:spaceapps/widget/map.dart';

class MapButton extends StatelessWidget {
  const MapButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MapWidget()));
      },
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
              decoration: const BoxDecoration(
                color: Colors.transparent,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
