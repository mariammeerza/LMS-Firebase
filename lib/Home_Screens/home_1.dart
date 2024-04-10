import 'package:flutter/material.dart';
import 'package:flutter_application_1/English_Screens/english.dart';
import 'package:flutter_application_1/Home_Screens/category_card.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
// import 'package:flutter_application_1/Home_Screens/navbar.dart';
import 'package:flutter_application_1/Maths_Screens/math.dart';
import 'package:flutter_application_1/Non-Verbal_Screens/nonverbal.dart';
import 'package:flutter_application_1/Quiz_Screens/quiz.dart';
import 'package:flutter_application_1/Verbal_Screens/verbal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentSliderValue = 0;

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
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: Container(
              height: screenHeight * 0.43,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 180, 216, 174),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * -0.03,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/cloud.png",
              height: screenHeight * 0.4,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Column(
                children: [
                  SizedBox(height: screenHeight * 0.15),
                  Text(
                    "Ready to Ace",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'HomePage',
                      fontSize: screenHeight * 0.05,
                      color: const Color(0xff494949),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Column(
                children: [
                  SizedBox(height: screenHeight * 0.21),
                  Text(
                    "11 Plus !",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'HomePage',
                      fontSize: screenHeight * 0.05,
                      color: const Color(0xff494949),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Column(
                children: [
                  SizedBox(height: screenHeight * 0.29),
                  Text(
                    "Let's Get Started.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'OnboardFont2',
                      fontSize: screenHeight * 0.028,
                      color: const Color(0xff494949),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          Positioned(
            top: screenHeight * 0.05,
            right: screenWidth * 0.05,
            child: GestureDetector(
              onTap: () {
                // Add your onPressed function here
              },
              child: Image.asset(
                "assets/king.png",
                width: screenWidth * 0.1,
                height: screenHeight * 0.05,
              ),
            ),
          ),
          // Positioned(
          //   top: screenHeight * 0.35,
          //   left: screenWidth * 0.1,
          //   child: SizedBox(
          //     width: screenWidth * 0.8,
          //     height: screenHeight * 0.5,
          //     child: GridView.count(
          //       crossAxisCount: 4,
          //       crossAxisSpacing: 15,
          //       mainAxisSpacing: 15,
          //       children: const <Widget>[
          //         CategoryCard(
          //           svgSrc: "assets/book.png",
          //         ),
          //         CategoryCard(
          //           svgSrc: "assets/plus.png",
          //           color: Color(0xFFF7A7B5),
          //         ),
          //         CategoryCard(
          //           svgSrc: "assets/search-chat.png",
          //           color: Color(0xFFABE1FF),
          //         ),
          //         CategoryCard(
          //           svgSrc: "assets/HiPuzzle.png",
          //           color: Color(0xFFFFF389),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Positioned(
            top: screenHeight * 0.35,
            left: screenWidth * 0.1,
            child: SizedBox(
              width: screenWidth * 0.8,
              height: screenHeight * 0.5,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const English(),
                      ),
                        );
                      // Handle the onTap event for the first CategoryCard
                    },
                    child: const CategoryCard(
                      svgSrc: "assets/book.png",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Maths(),
                      ),
                        );
                      // Handle the onTap event for the second CategoryCard
                    },
                    child: const CategoryCard(
                      svgSrc: "assets/plus.png",
                      color: Color(0xFFF7A7B5),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Verbal(),
                      ),
                        );
                    // Handle the onTap event for the third CategoryCard
                    },
                    child: const CategoryCard(
                      svgSrc: "assets/search-chat.png",
                      color: Color(0xFFABE1FF),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NonVerbal(),
                      ),
                        );
                      // Handle the onTap event for the fourth CategoryCard
                    },
                    child: const CategoryCard(
                      svgSrc: "assets/HiPuzzle.png",
                      color: Color(0xFFFFF389),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.43,
            left: screenWidth * 0.1,
            child: SizedBox(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: const <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 13,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Maths",
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 13,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Verbal",
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 13,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ), // Adjust space between "Verbal" and "Reasoning"
                        Text(
                          "Reasoning",
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 13,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Non-Verbal",
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 13,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ), // Adjust space between "Non-Verbal" and "Reasoning"
                        Text(
                          "Reasoning",
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 13,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 1.13,
            right: MediaQuery.of(context).size.width * 0.45,
            child: const Center(
              child: Text(
                'Start Learning',
                style: TextStyle(
                  fontFamily: 'Home',
                  fontSize: 26.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.56,
            left: screenWidth * 0.05,
            child: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.13,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(width: 2, color: Colors.black),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFFFCD83),
                    offset: Offset(5.0, 6.0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    "01 Comprehension and Essays",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: screenHeight * 0.02,
                      color: const Color(0xff494949),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.00),
                  Slider(
                    value: _currentSliderValue,
                    max: 100,
                    divisions: 100,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                      // Do something with the new slider value
                    },
                    activeColor: const Color(0xFF7BA24A),
                  ),
                  SizedBox(height: screenHeight * 0.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "5 Lessons",
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.02,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "10 Quizzes",
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: screenHeight * 0.02,
                          color: const Color(0xff494949),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 1.5,
            right: MediaQuery.of(context).size.width * 0.65,
            child: const Center(
              child: Text(
                'Explore',
                style: TextStyle(
                  fontFamily: 'Home',
                  fontSize: 26.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.735,
            left: screenWidth * 0.05,
            child: Container(
              width: screenWidth * 0.45,
              height: screenHeight * 0.15,
              decoration: BoxDecoration(
                  color: const Color(0xFFFDCFD7),
                  borderRadius: BorderRadius.circular(49),
                  border: Border.all(width: 1.5, color: Colors.black)),
              child: const Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Take a Quiz",
                    style: TextStyle(
                      fontFamily: 'HomePage',
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF494949),
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    "Join Friends & Earn",
                    style: TextStyle(
                      fontFamily: 'OnboardFont2',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 0.5),
                  Text(
                    "Rewards!",
                    style: TextStyle(
                      fontFamily: 'OnboardFont2',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.13,
                left: MediaQuery.of(context).size.width * 0.35,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.08,
                    height: screenWidth * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 2, color: const Color(0xff494949)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff494949),
                              offset: Offset(2.0, 4.0)),
                        ]),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff494949),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.15,
                left: MediaQuery.of(context).size.width * 0.25,
                child: Image.asset('assets/star1.png'),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.23,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Image.asset('assets/stars2.png'),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.31,
                left: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset('assets/stars3.png'),
              ),
              Positioned(
                top: screenHeight * 0.735,
                right: screenWidth * 0.03,
                child: Container(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.15,
                  decoration: BoxDecoration(
                      color: const Color(0xFFCBF1F9),
                      borderRadius: BorderRadius.circular(49),
                      border: Border.all(width: 1.5, color: Colors.black)),
                  child: const Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Connect",
                        style: TextStyle(
                          fontFamily: 'HomePage',
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF494949),
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        "Engage & Learn",
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Together",
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: MediaQuery.of(context).size.width * 0.13,
                    left: MediaQuery.of(context).size.width * 0.83,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: screenWidth * 0.08,
                        height: screenWidth * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 2, color: const Color(0xff494949)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff494949),
                                  offset: Offset(2.0, 4.0)),
                            ]),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Color(0xff494949),
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.width * 0.15,
                    left: MediaQuery.of(context).size.width * 0.7,
                    child: Image.asset('assets/stars4.png'),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.width * 0.24,
                    left: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset('assets/stars2.png'),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.width * 0.35,
                    left: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset('assets/stars5.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SemiCircleCustomBar(),
    );
  }
}
