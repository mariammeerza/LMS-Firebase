import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';
import 'package:flutter_application_1/Onboarding_Screens/onboard_1.dart';
import 'package:flutter_application_1/Onboarding_Screens/onboard_2.dart';
import 'package:flutter_application_1/Onboarding_Screens/onboard_3.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<Onboarding> {
  PageController _controller = PageController();
  double currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index.toDouble();
              });
            },
            children: [
              Onboard1(pageController: _controller),
              Onboard2(pageController: _controller),
              const Onboard3(),
            ],
          ),

          // Skip Button
          Positioned(
            top: 50.0,
            right: 20.0,
            child: TextButton(
              onPressed: () {
                // Add the logic to navigate to the Login screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  color: Color.fromARGB(255, 31, 30, 30),
                  fontSize: 21.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),

          // Dots Indicator
          Positioned(
            bottom: 150.0,
            left: 0,
            right: 0,
            child: DotsIndicator(
              dotsCount: 3,
              position: currentPage.toInt(),
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                color: Colors.grey,
                activeColor: const Color(0xffB4D8AE),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
