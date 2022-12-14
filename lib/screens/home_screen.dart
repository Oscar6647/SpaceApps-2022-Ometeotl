import 'package:flutter/material.dart';
import 'package:spaceapps/screens/infohub_screen.dart';

import '../widget/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
//        backgroundColor: Colors.transparent,
        backgroundColor: const Color(0x44000000),
        elevation: 20,
        title: const Text("Tell us your interests"),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/stars.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ContentCard(
                  category: 'Rain Forecast',
                  thumbnailUrl: 'assets/water.jpg',
                  icon: Icons.thunderstorm,
                ),
                ContentCard(
                  category: 'Pollution',
                  thumbnailUrl: 'assets/pollution.jpg',
                  icon: Icons.factory,
                ),
                ContentCard(
                  category: 'COVID-19',
                  thumbnailUrl: 'assets/covid.jpg',
                  icon: Icons.coronavirus,
                ),
                ContentCard(
                  category: 'Water Flow',
                  thumbnailUrl: 'assets/supplywater.jpg',
                  icon: Icons.water_drop,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InfoHub(),
                        ),
                      );
                      {}
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
