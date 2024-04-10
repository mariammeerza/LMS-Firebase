import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Maths_Screens/basicoperations3.dart';

class Explanation2 extends StatelessWidget {
  final String selectedAnswer;
  const Explanation2({required this.selectedAnswer});

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
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.05,
                      left: screenHeight * 0.001,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Q2: ',
                                  style: TextStyle(
                                    fontFamily: 'OnboardFont1',
                                    fontSize: 20.0,
                                    color: Color(0xFF7BA24A),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Which of these pair are equally distant from 11?',
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.09,
                      left: screenHeight * 0.0005,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(
                                text:
                                    'Which of these pair are equally distant from 11? ',
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Question copied to clipboard'),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.content_copy,
                            size: 15,
                          ),
                        ),
                        const SizedBox(width: 1),
                        const Text(
                          'Copy and Ask AI Tutor',
                          style: TextStyle(
                            fontFamily: 'LoginPage1',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.15,
                    ),
                    child: Container(
                      width: screenHeight * 0.38,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF5A0),
                        border: Border.all(
                            width: 2, color: const Color(0xFF494949)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Your Selected Answer: $selectedAnswer',
                          style: const TextStyle(
                            fontFamily: 'LoginPage1',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 190),
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                      indent: screenHeight * 0.0000000001,
                      endIndent: screenHeight * 0.035,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.23,
                      left: screenHeight * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Correct Answer:',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'LoginPage1',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: screenHeight * 0.38,
                          height: screenHeight * 0.05,
                          decoration: BoxDecoration(
                            color: const Color(0xffB4D8AE),
                            border: Border.all(
                                width: 2, color: const Color(0xFF494949)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'c) 11.27 and 10.73',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Explanation:',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'LoginPage1',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Expanded(
                          child: Text(
                            'Among the given pairs of numbers, the pair (11.27, 10.73) is equally distant from 11. The absolute difference between 11.27 and 11 is 0.27, and the absolute difference between 10.73 and 11 is also 0.27. This means that both numbers in this pair are the same distance away from 11. Therefore, the correct answer is c) 11.27 and 10.73.',
                            style: TextStyle(
                              fontSize: 17.5,
                              fontFamily: 'LoginPage1',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: screenHeight * 0.05,
                    left: screenHeight * 0.07,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 200,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasicOperations3(),
                    ),
                  );
                          // Add your continue button logic here
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff494949),
                          backgroundColor: Colors.yellow,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: const BorderSide(
                                color: Color(0xff494949), width: 2.0),
                          ),
                        ),
                        child: const Text(
                          'Continue',
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
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SemiCircleCustomBar(),
    );
  }
}
