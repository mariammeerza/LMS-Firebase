import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
// import 'package:flutter_application_1/Home_Screens/navbar.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
            child: Container(
              height: screenHeight * 0.28,
              decoration: const BoxDecoration(
                color: Color(0XFFCDE9C8),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.03,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 35,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.038,
              left: screenWidth * 0.15,
            ),
            child: const Text(
              'Learn',
              style: TextStyle(
                fontFamily: 'OnboardFont2',
                fontSize: 26.0,
                color: Color(0xff494949),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.13,
            left: screenWidth * 0.02,
            child: const Center(
              child: Text(
                'Select Subject',
                style: TextStyle(
                  fontFamily: 'HomePage',
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.18,
            left: screenWidth * 0.03,
            child: const Center(
              child: Text(
                'Select subject for special focus on each subject',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
              top: screenHeight * 0.3,
              left: screenWidth * 0.005,
              child: Container(
                width: screenHeight * 0.4,
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(width: 2, color: Colors.black),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Color(0xFFFFCD83),
                  //     offset: Offset(5.0, 6.0),
                  //   ),
                  // ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: SemiCircleCustomBar(),
    );
  }
}
