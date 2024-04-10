import 'package:flutter/material.dart';
import 'dart:async';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_application_1/Maths_Screens/basicoperations6.dart';
import 'package:flutter_application_1/Maths_Screens/explanation2.dart';
import 'package:flutter_application_1/Maths_Screens/explanation5.dart';

class BasicOperations5 extends StatefulWidget {
  const BasicOperations5({super.key});

  @override
  State<BasicOperations5> createState() => _BasicOperations5State();
}

class _BasicOperations5State extends State<BasicOperations5> {

    String? selectedOption;
  String correctOption = 'a'; // Correct option is 'c'
  late Timer _timer;
   bool isOptionSelected = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const duration = Duration(seconds: 20);
    _timer = Timer(duration, () {
      // _showTimeUpDialog();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Container(
              height: screenHeight * 0.23,
              decoration: const BoxDecoration(
                color: Color(0XFFCDE9C8),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.15,
              top: MediaQuery.of(context).size.height * 0.035,
            ),
            child: const Text(
              'Back',
              style: TextStyle(
                fontFamily: 'OnboardFont2',
                fontSize: 27.0,
                color: Color(0xff494949),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.03,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 33,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.18,
                left: screenHeight * 0.05,
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: screenHeight * 0.38,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: const Color(0XFFCDE9C8)),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Unit 01: ',
                            style: TextStyle(
                              fontFamily: 'OnboardFont1',
                              fontSize: 20.0,
                              color: Color(0xFF7BA24A),
                            ),
                          ),
                          TextSpan(
                            text: 'Basic Operations',
                            style: TextStyle(
                              fontFamily: 'OnboardFont1',
                              fontSize: 20.0,
                              color: Color(0xFF494949),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenHeight * 0.33,
                    top: screenHeight * 0.001,
                    child: CircularCountDownTimer(
                      duration: 20,
                      initialDuration: 0,
                      controller: CountDownController(),
                      width: 40,
                      height: 40,
                      ringColor: Colors.grey,
                      ringGradient: null,
                      fillColor: const Color(0XFFFDCFD7),
                      fillGradient: null,
                      backgroundColor: Colors.white,
                      backgroundGradient: null,
                      strokeWidth: 10.0,
                      strokeCap: StrokeCap.round,
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textFormat: CountdownTextFormat.S,
                      isReverse: true,
                      isReverseAnimation: false,
                      isTimerTextShown: true,
                      autoStart: true,
                      onStart: () {
                        // print('Countdown Started');
                      },
                      onComplete: () {
                        // print('Countdown Ended');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: screenHeight * 0.55,
                        right: screenHeight * 0.05),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Q5:',
                              style: TextStyle(
                                fontFamily: 'OnboardFont1',
                                fontSize: 20.0,
                                color: Color(0xFF7BA24A),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'John goes to the supermarket and buys three cartons of milk, one bread, a pack of cheese and two packets of rice. How much change should he expect, if he hands in a £20 note.',
                              style: TextStyle(
                                fontFamily: 'OnboardFont1',
                                fontSize: 16.0,
                                color: Color(0xFF494949),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: screenHeight * 0.28,
                        right: screenHeight * 0.05),
                        child: Center(
                          child: Image.asset(
                            'assets/shopping.png',
                            width: 170,
                            height: 170,
                            ),
                        ),
                  ),
                  // Option containers
                  Positioned(
                    top: screenHeight * 0.34,
                    left: screenHeight * 0.001,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'a';
                          if (selectedOption != null) {
                            _showResultDialog(selectedOption!);
                          }
                        });
                      },
                      child: buildOptionContainer(
                        'a) £3.35',
                        selectedOption == 'a',
                        'a',
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.42,
                    left: screenHeight * 0.001,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'b';
                          if (selectedOption != null) {
                            _showResultDialog(selectedOption!);
                          }
                        });
                      },
                      child: buildOptionContainer(
                        'b) £3.45',
                        selectedOption == 'b',
                        'b',
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.5,
                    left: screenHeight * 0.001,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'c';
                          if (selectedOption != null) {
                            _showResultDialog(selectedOption!);
                          }
                        });
                      },
                      child: buildOptionContainer(
                        'c) £3.85',
                        selectedOption == 'c',
                        'c',
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.58,
                    left: screenHeight * 0.001,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'd';
                          if (selectedOption != null) {
                            _showResultDialog(selectedOption!);
                          }
                        });
                      },
                      child: buildOptionContainer(
                        'd) £4.15',
                        selectedOption == 'd',
                        'd',
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.66,
                    left: screenHeight * 0.001,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = 'e';
                          if (selectedOption != null) {
                            _showResultDialog(selectedOption!);
                          }
                        });
                      },
                      child: buildOptionContainer(
                        'e) £4.45',
                        selectedOption == 'e',
                        'e',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.01,
            left: screenHeight * 0.15,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 250,
              child: TextButton(
                onPressed:isOptionSelected ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BasicOperations6(),
                    ),
                  );
                }:null,
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff494949),
                  backgroundColor: Colors.yellow,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side:
                        const BorderSide(color: Color(0xff494949), width: 2.0),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOptionContainer(String text, bool isSelected, String option) {
    bool isCorrect = selectedOption == correctOption;
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.height * 0.37,
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
          color: isSelected
              ? (isCorrect ? Colors.green : Colors.red)
              : Colors.white,
          borderRadius: BorderRadius.circular(35),
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'LoginPage1',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void _showResultDialog(String selectedOption) {
    bool isCorrect = selectedOption == correctOption;
    _timer.cancel();
    setState(() {
    isOptionSelected = true;
  });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              isCorrect
                  ? Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFCDE9C8),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff494949),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff494949),
                            offset: Offset(2.0, 4.0),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Color(0xff494949),
                        size: 40,
                      ),
                    )
                  : Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFFDCFD7),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff494949),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff494949),
                            offset: Offset(2.0, 4.0),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Color(0xff494949),
                        size: 40,
                      ),
                    ),
              const SizedBox(height: 50),
              isCorrect
                  ? const Center(
                      child: Text(
                        'Correct!',
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  : const Text(
                      'Incorrect!',
                      style: TextStyle(
                        fontFamily: 'OnboardFont1',
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
            ],
          ),
          actions: <Widget>[
            isCorrect
                ? const Center(
                    // child: TextButton(
                    //   onPressed: () {
                    //     Clipboard.setData(const ClipboardData(
                    //         text:
                    //             'Which of these calculations will yield 3.7?'));
                    //     Navigator.of(context).pop();
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       const SnackBar(
                    //         content: Text('Question copied to clipboard'),
                    //       ),
                    //     );
                    //   },
                    //   child: const Icon(
                    //     Icons.content_copy,
                    //     size: 30,
                    //   ),
                    // ),
                    )
                : Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Explanation5(
                              selectedAnswer: selectedOption,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'View Explanation',
                        style: TextStyle(
                          fontFamily: 'OnboardFont1',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
          ],
        );
      },
    );
  }

  // void _showTimeUpDialog() {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Time\'s Up!'),
  //         content: const Text(
  //             'You ran out of time. The correct answer is: c) 11.27 and 10.73'),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
