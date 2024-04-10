import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash_Screens/splash3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SplashScreen3(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 800),
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
              //     "assets/splashscreen1.png",
              //     height: 160,
              //   ),
              // ),
              Positioned(
                top: 10,
                child: AnimatedOpacity(
                  opacity: opacityLevel,
                  duration: const Duration(seconds: 2),
                  child: Image.asset(
                    "assets/splashscreen1.png",
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
