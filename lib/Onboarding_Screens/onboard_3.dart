import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({Key? key}) : super(key: key);

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
              // Positioned(
              //   top: screenHeight * 0.03,
              //   left: screenWidth * 0.3,
              //   child: Image.asset(
              //     "assets/star2.png",
              //     height: screenHeight * 0.07,
              //   ),
              // ),
              // Positioned(
              //   top: screenHeight * 0.08,
              //   left: screenWidth * 0.6,
              //   child: Image.asset(
              //     "assets/clock.png",
              //     height: screenHeight * 0.1,
              //   ),
              // ),
              Positioned(
                top: screenHeight * 0.08,
                child: Image.asset(
                  "assets/onboard3main.png",
                  height: screenHeight * 0.35,
                ),
              ),
              // Positioned(
              //   top: screenHeight * -0.02,
              //   right: screenWidth * 0.4,
              //   child: Image.asset(
              //     "assets/onboard3.png",
              //     height: screenHeight * 0.4,
              //   ),
              // ),
              Positioned(
                top: screenHeight * 0.45,
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(screenHeight * 0.04),
                    border: Border.all(width: 2, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(5.0, 6.0)),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * 0.03),
                      Text(
                        "Mockup Exams",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.048,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.004),
                      Text(
                        "& Quiz",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.048,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      Text(
                        "Simulate exams, test your",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.025,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "knowledge, and conquer your",
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
                        "study goals.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: screenHeight * 0.025,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.05,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the Login screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenHeight * 0.1,
                    height: screenHeight * 0.1,
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
            ],
          ),
        ),
      ),
    );
  }
}
