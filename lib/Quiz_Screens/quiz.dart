import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Maths_Screens/basicoperations.dart';
import 'package:flutter_application_1/Maths_Screens/math.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool quizClicked = true;
  bool lessonsClicked = true;
  double _basicOperationsValue = 0.5;
  double _hcfLcmValue = 0.5;
  double _multiplyValue = 0.5;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.0,
          ),
          child: const Text(
            'Back',
            style: TextStyle(
              fontFamily: 'OnboardFont2',
              fontSize: 26.0,
              color: Color(0xff494949),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 180, 216, 174),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(255, 180, 216, 174),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.05,
              left: MediaQuery.of(context).size.width * 0.03,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Maths(),
                      ),
                        );
                    // Add your action for the Lessons section here
                  },
                  child: const Text(
                    'Lessons',
                    style: TextStyle(
                      fontFamily: 'OnboardFont2',
                      fontSize: 24.0,
                      color: Color(0xff494949),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                  width: 200,
                  child: Container(
                    color: quizClicked ? Colors.white : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.05,
              left: MediaQuery.of(context).size.width * 0.5,
            ),
            child: Column(
              children: [
                const Text(
                  'Quiz',
                  style: TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 24.0,
                    color: Color(0xff494949),
                  ),
                ),
                SizedBox(
                  height: 3,
                  width: 200,
                  child: Container(
                    color: quizClicked ? Colors.black : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.12,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
              child: const Center(
                child: Text(
                  'Unit 01:Basic Operations',
                  style: TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 22,
                    color: Color(0xff494949),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.2,
            left: screenHeight * 0.13,
            child: Row(
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackShape: const RectangularSliderTrackShape(),
                    trackHeight: 6.0,
                    thumbShape: SliderComponentShape.noThumb,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 16.0),
                    overlayColor: Colors.black.withAlpha(32),
                    activeTrackColor: Colors.yellow.withOpacity(0.7),
                    inactiveTrackColor: Colors.white,
                  ),
                  child: Slider(
                    value: _basicOperationsValue,
                    onChanged: (newValue) {
                      setState(() {
                        _basicOperationsValue = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.186,
            right: screenHeight * 0.12,
            child: Image.asset(
              'assets/king.png',
              height: 35,
              width: 35,
            ),
          ),
          Positioned(
            top: screenHeight * 0.24,
            left: screenWidth * 0.4,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BasicOperations(),
                  ),
                );
              },
              child: Container(
                width: screenWidth * 0.20,
                height: screenWidth * 0.20,
                decoration: BoxDecoration(
                  color: const Color(0XFFFDCFD7),
                  shape: BoxShape.circle,
                  border:
                      Border.all(width: 3, color: const Color(0xff494949)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff494949),
                      offset: Offset(6.0, 4.0),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    '01',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff494949),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.34,
            left: screenWidth * 0.15,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const BasicOperations(),
                //   ),
                // );
              },
              child: Container(
                width: screenWidth * 0.20,
                height: screenWidth * 0.20,
                decoration: BoxDecoration(
                  color: const Color(0XFFFDCFD7),
                  shape: BoxShape.circle,
                  border:
                      Border.all(width: 3, color: const Color(0xff494949)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff494949),
                      offset: Offset(6.0, 4.0),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    '02',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff494949),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.42,
            left: screenWidth * 0.43,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const BasicOperations(),
                //   ),
                // );
              },
              child: Container(
                width: screenWidth * 0.20,
                height: screenWidth * 0.20,
                decoration: BoxDecoration(
                  color: const Color(0XFFFDCFD7),
                  shape: BoxShape.circle,
                  border:
                      Border.all(width: 3, color: const Color(0xff494949)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff494949),
                      offset: Offset(6.0, 4.0),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    '03',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff494949),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: screenHeight * 0.26,
          //   left: screenWidth * 0.07,
          //   child: Image.asset(
          //     'assets/cloud.png',
          //     width: 400,
          //     height: 400,
          //     ))
        ],
      ),
      bottomNavigationBar: SemiCircleCustomBar(),
    );
  }
}
