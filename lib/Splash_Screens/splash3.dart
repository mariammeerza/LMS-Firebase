import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash_Screens/splash.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreenState3();
}

class _SplashScreenState3 extends State<SplashScreen3> {
  double opacityLevel = 1.0;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      // Start the fade-out animation after 1 second
      fadeOut();
    });

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        ),
      );
    });
  }

  void fadeOut() {
    setState(() {
      opacityLevel = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              //   top: 100,
              //   left: 10,
              //   child: Image.asset(
              //     "assets/splash3.png",
              //     height: 160,
              //   ),
              // ),
              Positioned(
                top: -5,
                child: AnimatedOpacity(
                  opacity: opacityLevel,
                  duration: const Duration(seconds: 5),
                  child: Image.asset(
                    "assets/splashscreen3.gif",
                    height: 900,
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 100,
              //   right: 10,
              //   child: Image.asset(
              //     "assets/Group.png",
              //     height: 160,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
