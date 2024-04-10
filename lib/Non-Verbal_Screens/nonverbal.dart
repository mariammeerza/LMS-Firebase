import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Maths_Screens/lessons.dart';
import 'package:flutter_application_1/Quiz_Screens/quiz.dart';

class NonVerbal extends StatefulWidget {
  const NonVerbal({super.key});

  @override
  State<NonVerbal> createState() => _NonVerbalState();
}

class _NonVerbalState extends State<NonVerbal> {
   bool lessonsClicked = true;

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
                color: Color(0XFFFFF6A0),
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
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.15, // Adjust this value as needed
            left: screenWidth * 0.1, // Adjust this value as needed
            right: screenWidth * 0.1, // Adjust this value as needed
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.038,
              left: MediaQuery.of(context).size.width * 0.15,
            ),
            child: const Text(
              'Non-Verbal Reasoning',
              style: TextStyle(
                fontFamily: 'OnboardFont2',
                fontSize: 26.0,
                color: Color(0xff494949),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.24,
              left: MediaQuery.of(context).size.width * 0.15,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  lessonsClicked = false;
                });
              },
              child: Column(
                children: [
                  const Text(
                    'Lessons',
                    style: TextStyle(
                      fontFamily: 'OnboardFont2',
                      fontSize: 24.0,
                      color: Color(0xff494949),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                    width: 100,
                    child: Container(
                      color: lessonsClicked ? Colors.black : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.24,
              left: MediaQuery.of(context).size.width * 0.65,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                        );
              },
              child: const Text(
                'Quiz',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 24.0,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.31,
              left: MediaQuery.of(context).size.width * 0.08,
            ),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Unit 01: ',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 26.0,
                      color: Color(
                        0xFF7BA24A,
                      ), // Change the color for 'Unit 01' text
                    ),
                  ),
                  TextSpan(
                    text: 'Basic Operations',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 26.0,
                      color: Color(
                        0xFF494949,
                      ), // Change the color for 'Basic Operations' text
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.35,
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: lessonsClicked ? const LessonsPage() : const SizedBox(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.5,
              left: MediaQuery.of(context).size.width * 0.08,
            ),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Unit 02: ',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 26.0,
                      color: Color(
                        0xFF7BA24A,
                      ), // Change the color for 'Unit 01' text
                    ),
                  ),
                  TextSpan(
                    text: 'Basic Operations',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 26.0,
                      color: Color(
                        0xFF494949,
                      ), // Change the color for 'Basic Operations' text
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.53,
            ),
            child: const LessonsPage(),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.68, // Adjust this value as needed
              left: MediaQuery.of(context).size.width * 0.08,
            ),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Unit 03: ',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 26.0,
                      color: Color(0xFF7BA24A),
                    ),
                  ),
                  TextSpan(
                    text: 'Basic Operations',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 26.0,
                      color: Color(0xFF494949),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.71, // Adjust this value as needed
            ),
            child: const LessonsPage(),
          ),
        ],
      ),
      // bottomNavigationBar: const SemiCircleCustomBar(),
    );
  }
}
