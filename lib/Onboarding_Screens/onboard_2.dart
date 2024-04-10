import 'package:flutter/material.dart';

class Onboard2 extends StatelessWidget {
  final PageController pageController;

  const Onboard2({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 180, 216, 174),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: screenHeight * 0.025,
                left: screenWidth * 0.03,
                child: Image.asset(
                  "assets/onboardingtop.png",
                  height: screenHeight * 0.1,
                ),
              ),
              Positioned(
                top: screenHeight * 0.07,
                child: Image.asset(
                  "assets/onboarding_2.png",
                  height: screenHeight * 0.4,
                ),
              ),
              Positioned(
                top: screenHeight * 0.43,
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(5.0, 6.0)),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * 0.05),
                      Text(
                        "Meet Your",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.045,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "AI Powered Tutor",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.045,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        "Personalized learning, instant",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.023,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "answers - your AI tutor is here to",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.023,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "guide you.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.023,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.075,
                left: screenWidth * 0.42,
                child: GestureDetector(
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.20,
                    height: screenWidth * 0.20,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 233, 33),
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff494949),
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.015,
                right: screenWidth * -0.040,
                child: Image.asset(
                  "assets/object.png",
                  height: screenHeight * 0.1,
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.82,
                right: screenWidth * 0.06,
                child: Image.asset(
                  "assets/Frame.png",
                  height: screenHeight * 0.075,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
