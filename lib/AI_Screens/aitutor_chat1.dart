import 'package:flutter/material.dart';
import 'package:flutter_application_1/AI_Screens/AIChatScreen.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';
import 'package:flutter_application_1/Sidebar_AITutor/sidebarai.dart';

class aitutor_chat extends StatefulWidget {
  const aitutor_chat({super.key});

  @override
  State<aitutor_chat> createState() => _aitutor_chatState();
}

class _aitutor_chatState extends State<aitutor_chat> {
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 52, // Adjust the position as needed
                    left: 355, // Adjust the position as needed
                    child: Builder(
                      builder: (context) => IconButton(
                        icon: const Icon(Icons.messenger_outline,
                            size: 28, color: Color.fromARGB(158, 0, 0, 0)),
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
                      'write & edit',
                      style: TextStyle(
                        fontFamily: 'GEB',
                        fontSize: 22.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff494949),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 220.0,
                    child: Text(
                      "Explain",
                      style: TextStyle(
                        fontFamily: 'GEB',
                        fontSize: 23.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff494949),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(
              bottom: screenHeight *
                  0.03, // Adjust this to position above the navigation bar
              left: screenWidth *
                  0.05, // Give some padding from the screen's left edge
              right: screenWidth *
                  0.05, // Give some padding from the screen's right edge
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0), // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type your question here...",
                          border: InputBorder.none,
                          // prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.mic,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () {
                        // Implement mic functionality
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.send,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () {
                        // Implement send functionality
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AIChatScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            //       Positioned(
            //         // top: screenHeight * .830,
            //         // left: screenWidth * 0.02,
            //         child:
            //         // Container(
            //           _buildInputField(context),
            //   // padding: const EdgeInsets.fromLTRB(55,0,280,0), // Adjusted padding
            //   // decoration: BoxDecoration(
            //   //   border: Border.all(color: Colors.black),
            //   //   borderRadius: BorderRadius.circular(50.0),
            //   // ),
            //   // child: Row(
            //   //   children: <Widget>[
            //   //     const Expanded(
            //   //       child: TextField(
            //   //         // controller: _textController,
            //   //         decoration: InputDecoration(
            //   //           border: InputBorder.none,
            //   //           hintText: 'Send a message',
            //   //         ),
            //   //       ),
            //   //     ),
            //   //     // Positioned(
            //   //     //   top: 670,
            //   //     //   left: screenWidth * 0.4,
            //   //       // child:
            //   //       IconButton(
            //   //       icon: const Icon(Icons.mic),
            //   //       onPressed: () {
            //   //         null;
            //   //       },
            //   //     ),
            //   //     // ),
            //   //     IconButton(
            //   //       icon: const Icon(Icons.send),
            //   //       onPressed: () {
            //   //         // sendMessage(_textController.text);
            //   //       },
            //   //     ),
            //   //   ],
            //   // ),
            // // ),
            // )

            //           TextField(
            // onSubmitted: (value) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => AIChatScreen()),
            //   );
            // },
            // decoration: InputDecoration(
            //   hintText: 'Type your message here...',
            //   suffixIcon: IconButton(
            //     icon: Icon(Icons.send),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => AIChatScreen()),
            //       );
            //     },
            //   ),
          ],
        ),
        endDrawer: const Sidebar(),
        bottomNavigationBar: const SemiCircleCustomBar());
  }
}

typedef SendMessageCallback = void Function(String message);

Widget _buildInputField(BuildContext context, SendMessageCallback sendMessage) {
  TextEditingController _controller = TextEditingController();

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Type a message",
              border: InputBorder.none,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send_outlined),
          onPressed: () {
            String message = _controller.text;
            if (message.isNotEmpty) {
              sendMessage(message);
              _controller.clear();
            }
          },
        ),
      ],
    ),
  );
}