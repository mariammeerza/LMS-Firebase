import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  final PageController pageController;

  const Onboard1({Key? key, required this.pageController}) : super(key: key);

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
                top: screenHeight * 0.01,
                left: screenWidth * 0.04,
                child: Image.asset(
                  "assets/star.png",
                  height: screenHeight * 0.05,
                ),
              ),
              Positioned(
                top: screenHeight * 0.07,
                child: Image.asset(
                  "assets/onboarding_1.png",
                  height: screenHeight * 0.4,
                ),
              ),
              Positioned(
                top: screenHeight * 0.46,
                child: Container(
                  width: screenWidth * 0.9,
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
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        "Connect, Learn",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.05,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "& Grow",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.05,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        "Engage, collaborate, and learn",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.025,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "together with our vibrant",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.025,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "community.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.025,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.055,
                left: screenWidth * 0.4,
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
                top: screenHeight * 0.83,
                right: screenWidth*0.1,
                child: Image.asset(
                  "assets/vector.png",
                  height: screenHeight * 0.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
