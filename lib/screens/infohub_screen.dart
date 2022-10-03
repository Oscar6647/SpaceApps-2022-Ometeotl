import 'package:flutter/material.dart';
import 'package:spaceapps/widget/mapbutton.dart';

class InfoHub extends StatelessWidget {
  const InfoHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50.0, left: 8.0, right: 8.0),
            child: MapButton(),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff151515),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: .8,
                          blurRadius: 4,
                          offset: Offset(1, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 8.0, right: 8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: const [
                                Text(
                                  "Select desired date",
                                  style: TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 32,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 1200,
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 300,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                children: [
                                  BoxCard(
                                    text: "asd",
                                    icon: Icons.home,
                                    image: "assets/covid.jpg",
                                  ),
                                  BoxCard(
                                    text: "asd",
                                    icon: Icons.home,
                                    image: "assets/covid.jpg",
                                  ),
                                  BoxCard(
                                    text: "asd",
                                    icon: Icons.home,
                                    image: "assets/covid.jpg",
                                  ),
                                  BoxCard(
                                    text: "asd",
                                    icon: Icons.home,
                                    image: "assets/covid.jpg",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final String image;

  const BoxCard({
    required this.text,
    required this.icon,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
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
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 7),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
