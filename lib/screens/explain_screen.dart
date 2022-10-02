import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplainScreen extends StatefulWidget {
  const ExplainScreen({Key? key}) : super(key: key);

  @override
  State<ExplainScreen> createState() => _ExplainScreenState();
}

class _ExplainScreenState extends State<ExplainScreen> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 50.0,
                        right: 50.0,
                        top: MediaQuery.of(context).size.height / 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Icon(
                          Icons.map,
                          size: (MediaQuery.of(context).size.height / 4),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Welcome",
                            style: GoogleFonts.sourceSans3(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Easily access Earth data. Anytime, anywhere",
                            style: GoogleFonts.sourceSans3(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {
                              Curve curve = Curves.ease;
                              pageController.animateToPage(
                                1,
                                duration: const Duration(milliseconds: 500),
                                curve: curve,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.white),
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
                        SizedBox(
                          height: 100,
                        ),
                        const Image(
                          alignment: Alignment.bottomCenter,
                          height: 150,
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 50.0,
                        right: 50.0,
                        top: MediaQuery.of(context).size.height / 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Icon(
                          Icons.cloud,
                          size: (MediaQuery.of(context).size.height / 4),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Discover",
                            style: GoogleFonts.sourceSans3(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Learn new information about our planet",
                            style: GoogleFonts.sourceSans3(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {
                              Curve curve = Curves.ease;
                              pageController.animateToPage(
                                2,
                                duration: const Duration(milliseconds: 500),
                                curve: curve,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.white),
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
                        SizedBox(
                          height: 100,
                        ),
                        const Image(
                          alignment: Alignment.bottomCenter,
                          height: 150,
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 50.0,
                        right: 50.0,
                        top: MediaQuery.of(context).size.height / 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Icon(
                          Icons.people,
                          size: (MediaQuery.of(context).size.height / 4),
                        ),
                        /* Image(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 2,
                            image: const AssetImage(
                                "assets/images/earthimage.jpeg")), */
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Made for everyone",
                            style: GoogleFonts.sourceSans3(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Filter information that's relevant to you",
                            style: GoogleFonts.sourceSans3(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {
                              Curve curve = Curves.ease;
                              pageController.animateToPage(3,
                                  duration: const Duration(milliseconds: 500),
                                  curve: curve);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.white),
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
                        SizedBox(
                          height: 100,
                        ),
                        const Image(
                          alignment: Alignment.bottomCenter,
                          height: 150,
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.black),
          )
        ],
      ),
    );
  }
}
