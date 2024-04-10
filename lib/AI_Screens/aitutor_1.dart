import 'package:flutter/material.dart';
import 'package:flutter_application_1/AI_Screens/AIChatScreen.dart';
import 'package:flutter_application_1/AI_Screens/aitutor_chat1.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Home_Screens/home_1.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';
import 'package:flutter_application_1/Sidebar_AITutor/sidebarai.dart';

class AItutor extends StatefulWidget {
  const AItutor({super.key});

  @override
  State<AItutor> createState() => _AItutorState();
}

class _AItutorState extends State<AItutor> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
        body: Stack(
          children: [
            Container(
              height: screenHeight * double.infinity,
              width: screenWidth * double.infinity,
              color: Colors.white,
              child: Stack(children: [
                Positioned(
                  top: screenWidth * 1.68, // Adjust as needed
                  left: screenHeight * 0.01, // Adjust as needed
                  child: Image.asset('assets/aispark.jpg',
                      width: 100, height: 100), // First image
                ),
              ]),
            ),
            Positioned(
              top: screenHeight * 0, // Adjust this value to control the overlap
              left: screenWidth * 0,
              child: Container(
                // New container
                height: screenHeight * 0.43,
                width: screenWidth * 1.0,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 180, 216, 174),
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(
                          255, 255, 255, 255), // Color of the bottom border
                      width: 50.0, // Width of the bottom border
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(65), // Top left corner
                    bottomRight: Radius.circular(65), // Top right corner
                    // Adjust the radius as needed
                  ),
                  // You can add other decoration properties like boxShadow here
                ),
                child: Stack(alignment: Alignment.center, children: [
                  Positioned(
                    top: screenHeight * 0.13, // Adjust as needed
                    left: screenWidth * 0.025, // Adjust as needed
                    child: Image.asset("assets/spark.png",
                        width: 100, height: 100), // First image
                  ),
                  Positioned(
                    top: screenHeight * 0.11, // Adjust as needed
                    left: screenWidth * 0.035, // Adjust as needed
                    child: Image.asset(
                      "assets/cloudsmall.png",
                    ), // First image
                  ),
                  Positioned(
                    top: 122, // Adjust as needed
                    left: 300, // Adjust as needed
                    child: Image.asset("assets/Bigcloud.png",
                        width: 100, height: 100), // First image
                  ),
                  Positioned(
                    top: 200, // Adjust as needed
                    left: 10, // Adjust as needed
                    child: Image.asset("assets/cloud2nd.png",
                        width: 100, height: 100), // First image
                  ),
                  Positioned(
                    top: 117, // Adjust as needed
                    left: 320, // Adjust as needed
                    child: Image.asset(
                      "assets/spark.png",
                    ), // First image
                  ),
                  Positioned(
                    top: 52, // Adjust the position as needed
                    left: 5, // Adjust the position as needed
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back,
                          size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Positioned(
                    top: 52, // Adjust the position as needed
                    left: 305, // Adjust the position as needed
                    child: IconButton(
                      icon: const Icon(Icons.volume_up_outlined,
                          size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const Login()),
                        // );
                      },
                    ),
                  ),
                  Positioned(
                    top: 52, // Adjust the position as needed
                    left: 355, // Adjust the position as needed
                    child: Builder(
                    builder: (context) => IconButton(
                        icon: const Icon(Icons.messenger_outline, size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                        onPressed: () {
                          // Here we use the 'context' provided by the Builder which is a descendant of Scaffold
                          Scaffold.of(context).openEndDrawer();
                        },
                      ),
                    ),
                  ),
                  //   child: IconButton(
                  //     icon: const Icon(Icons.messenger_outline,
                  //         size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                  //     onPressed: () {
                  //       Scaffold.of(context).openDrawer();
                  //     },
                  //   ),
                  // ),
                  const Positioned(
                    top: 60.0,
                    left: 56,
                    child: Text(
                      'AI Tutor',
                      style: TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 27.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff494949),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 150.0,
                    child: Text(
                      'Hi there!',
                      style: TextStyle(
                        fontFamily: 'GEB',
                        fontSize: 27.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff494949),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 180.0,
                    child: Text(
                      "I'm your AI buddy.",
                      style: TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 27.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff494949),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 280, // Adjust this value to control the overlap
              left: 35,
              child: Container(
                // New container
                padding: const EdgeInsets.all(16),
                height: 110,
                width: 335,
                decoration: BoxDecoration(
                    color: const Color(
                        0xFFFDCFD7), // Background color of the container
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                    // Optionally, add a border, shadow, etc.
                    border: Border.all(width: 1, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff494949), offset: Offset(5.0, 6.0))
                    ]),
                child: const Column(
                  children: [
                    Text(
                      'Got questions?',
                      style: TextStyle(
                        fontFamily: 'OnboardFont1',
                        fontSize: 18.0,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 10), // Space between texts
                    Text(
                      ' Just ask and I will guide you.',
                      style: TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 18.0,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 700.0,
              left: 155,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff494949),
                      offset: Offset(3, 4), 
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                      20.0), 
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AIChatScreen(),
                      ),
                    );
                    // Add your login functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xff494949),
                    backgroundColor: const Color(0xFFFFE500), // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                          color: Color(0xff494949), width: 1.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      'Start',
                      style: TextStyle(
                        fontFamily: 'OnboardFont1',
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 430,
                left: 40,
                child: Container(
                    padding: const EdgeInsets.all(16),
                    // height: 110,
                    // width: 335,
                    child: Image.asset('assets/aitutor.png')))
                    
          ],
        ),
        endDrawer: const Sidebar(),
        bottomNavigationBar: SemiCircleCustomBar()
        );
  }
}
