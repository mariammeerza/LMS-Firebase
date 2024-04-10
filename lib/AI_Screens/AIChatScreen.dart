import 'package:flutter/material.dart';
import 'package:flutter_application_1/AI_Screens/aitutor_1.dart';
import 'package:flutter_application_1/AI_Screens/aitutor_chat1.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Sidebar_AITutor/sidebarai.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AIChatScreen extends StatefulWidget {
  final String? initialMessage;

  // final String promptText;
  
  
  const AIChatScreen({Key? key, this.initialMessage}) : super(key: key);
  @override
  State<AIChatScreen> createState() => _AIChatScreenState();
}

class _AIChatScreenState extends State<AIChatScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = []; // Ensure this is a list of maps

    // void initState() {
  //   super.initState();
  //   messages.add({"type": "prompt", "text": widget.promptText});
  // }

void _sendMessage() async {
  String prompt = _controller.text;
  if (prompt.isNotEmpty) {
    setState(() {
      messages.add({"type": "prompt", "text": prompt});
      _controller.clear();
    });

    final response = await http.get(
      Uri.parse('http://10.0.2.2:5000/query?query=$prompt'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if (responseData.containsKey('response')) {
        setState(() {
          messages.add({"type": "ai", "text": responseData['response']});
        });
      } else {
        print("The API response does not contain the key 'response'.");
      }
    } else {
      print("Error: ${response.body}");
    }
  }
}

  Widget _buildMessageBubble(Map<String, String> message) {
  bool isPrompt = message['type'] == 'prompt';
  return Align(
    alignment: isPrompt ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: isPrompt
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 2)),
      child: Text(
        message['text']!,
        style: TextStyle(
          fontSize: 17,
          color: isPrompt ? Colors.black : Colors.black,
        ),
      ),
    ),
  );
}


  @override
Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  return Scaffold(
    key: _scaffoldKey,
    body: Stack(
      children: [
        Positioned(
          top: screenHeight * 0,
          left: screenWidth * 0,
          child: Container(
            height: screenHeight * 0.2,
            width: screenWidth * 1.0,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 180, 216, 174),
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 50.0,
                ),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(65),
                bottomRight: Radius.circular(65),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 52,
                  left: 5,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back,
                        size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: 52,
                  left: 305,
                  child: IconButton(
                    icon: const Icon(Icons.volume_up_outlined,
                        size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                    onPressed: () {
                      // Add your functionality for the volume up button here
                    },
                  ),
                ),
                Positioned(
                  top: 52,
                  left: 355,
                  child: Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Icons.messenger_outline,
                          size: 28, color: Color.fromARGB(158, 0, 0, 0)),
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    ),
                  ),
                ),
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
              ],
            ),
          ),
        ),
        if (messages.isEmpty) 
          Positioned(
            top: screenHeight * 0.15,
            left: screenHeight * 0.0,
            child: Image.asset(
              'assets/prompts.png',
              width: 420,
              height: 420,
            ),
          ),
          if (messages.isEmpty) 
          Positioned(
            top: screenHeight * 0.53,
            right: screenHeight * 0.15,
            child: Image.asset(
              'assets/chat_owl.png',
              width: 420,
              height: 420,
            ),
          ),
        Positioned(
          top: screenHeight * 0.2,
          left: 0,
          right: 0,
          bottom: 20,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return _buildMessageBubble(messages[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _controller,
                                decoration: const InputDecoration(
                                  hintText: '  Type a message',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.mic, color: Colors.grey),
                              onPressed: () {
                                // Add your functionality for the mic button here
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.send,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              onPressed: _sendMessage,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    endDrawer: const Sidebar(),
    bottomNavigationBar: const SemiCircleCustomBar(),
    // bottomSheet: _buildInputField(context, _sendMessageAndNavigate),
  );
}
}
