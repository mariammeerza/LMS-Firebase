import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Home_Screens/home_1.dart';
import 'package:flutter_application_1/SignUp_Screens/signup_1.dart';
import 'package:image_picker/image_picker.dart';

class Child2 extends StatefulWidget {
  const Child2({Key? key}) : super(key: key);

  @override
  State<Child2> createState() => _Child2State();
}

class _Child2State extends State<Child2> {
  Uint8List? _image;

  Future<void> selectImage() async {
    Uint8List? img = await pickImage(ImageSource.gallery);
    if (img != null) {
      setState(() {
        _image = img;
      });
    }
  }

  Future<Uint8List?> pickImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    final XFile? _file = await _imagePicker.pickImage(source: source);
    if (_file != null) {
      return await _file.readAsBytes();
    }
    print('No image selected');
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the login page when the back button is clicked
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUp(),
              ),
            );
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(
            fontFamily: 'OnboardFont2',
            fontSize: 26.0,
            color: Color(0xff494949),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 180, 216, 174),
        elevation: 0, // Remove the shadow
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(255, 180, 216, 174),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.1,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.37,
            child: const Center(
              child: Text(
                'Select Your Avatar',
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 27.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 0.2,
            left: screenWidth * 0.05,
            right: screenWidth * 0.2,
            child: const Center(
              child: Text(
                'Provide your Profile picture or select an Avatar ',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 0.4,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Center(
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.yellow,
                    width: 4,
                  ),
                ),
                child: _image != null
                    ? CircleAvatar(
                        radius: 150,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : const CircleAvatar(
                        backgroundImage: AssetImage('assets/child1.png'),
                        backgroundColor: Colors.white,
                      ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.1,
            left: screenWidth * 0.0,
            right: screenWidth * 0.74,
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  ByteData? byteData =
                      await rootBundle.load('assets/child2.png');
                  Uint8List imageData = byteData!.buffer.asUint8List();
                  setState(() {
                    _image = imageData;
                  });
                },
                child: const CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage('assets/child2.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 0.95,
            left: screenWidth * 0.1,
            right: screenWidth * 0.35,
            bottom: screenWidth * 0.55,
            child: Center(
              child: Container(
                width: 77,
                height: 77,
                // decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //   border: Border.all(
                //     color: Colors.yellow,
                //     width: 2,
                //   ),
                // ),
                child: _image != null
                    ? GestureDetector(
                        onTap: () async {
                          ByteData? byteData =
                              await rootBundle.load('assets/child1.png');
                          Uint8List imageData = byteData!.buffer.asUint8List();
                          setState(() {
                            _image = imageData;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage('assets/child1.png'),
                        ),
                      )
                    : const CircleAvatar(
                        backgroundImage: AssetImage('assets/child1.png'),
                        backgroundColor: Colors.white,
                      ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.09,
            left: screenWidth * 0.01,
            right: screenWidth * -0.25,
            child: Center(
              child: Container(
                width: 77,
                height: 77,
                child: _image != null
                    ? GestureDetector(
                        onTap: () async {
                          ByteData? byteData =
                              await rootBundle.load('assets/child3.png');
                          Uint8List imageData = byteData!.buffer.asUint8List();
                          setState(() {
                            _image = imageData;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage('assets/child3.png'),
                        ),
                      )
                    : const CircleAvatar(
                        backgroundImage: AssetImage('assets/child3.png'),
                        backgroundColor: Colors.white,
                      ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 0.9,
            left: screenWidth * 0.05,
            right: screenWidth * -0.7,
            bottom: screenWidth * 0.5,
            child: Center(
              child: Container(
                width: 77,
                height: 77,
                child: _image != null
                    ? GestureDetector(
                        onTap: () async {
                          ByteData? byteData =
                              await rootBundle.load('assets/child4.png');
                          Uint8List imageData = byteData!.buffer.asUint8List();
                          setState(() {
                            _image = imageData;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/child4.png'),
                        ),
                      )
                    : const CircleAvatar(
                        backgroundImage: AssetImage('assets/child4.png'),
                        backgroundColor: Colors.white,
                      ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.35,
            left: screenWidth * 0.0,
            right: screenWidth * 0.74,
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  ByteData? byteData =
                      await rootBundle.load('assets/child5.png');
                  Uint8List imageData = byteData!.buffer.asUint8List();
                  setState(() {
                    _image = imageData;
                  });
                },
                child: const CircleAvatar(
                  radius: 37,
                  backgroundImage: AssetImage('assets/child5.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.35,
            left: screenWidth * 0.13,
            right: screenWidth * 0.35,
            child: Center(
              child: Container(
                width: 77,
                height: 77,
                child: _image != null
                    ? GestureDetector(
                        onTap: () async {
                          ByteData? byteData =
                              await rootBundle.load('assets/child6.png');
                          Uint8List imageData = byteData!.buffer.asUint8List();
                          setState(() {
                            _image = imageData;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage('assets/child6.png'),
                        ),
                      )
                    : const CircleAvatar(
                        backgroundImage: AssetImage('assets/child6.png'),
                        backgroundColor: Colors.white,
                      ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.35,
            left: screenWidth * 0.02,
            right: screenWidth * -0.25,
            child: Center(
              child: Container(
                width: 77,
                height: 77,
                child: _image != null
                    ? GestureDetector(
                        onTap: () async {
                          ByteData? byteData =
                              await rootBundle.load('assets/child7.png');
                          Uint8List imageData = byteData!.buffer.asUint8List();
                          setState(() {
                            _image = imageData;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage('assets/child7.png'),
                        ),
                      )
                    : const CircleAvatar(
                        backgroundImage: AssetImage('assets/child7.png'),
                        backgroundColor: Colors.white,
                      ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.35,
            left: screenWidth * 0.5,
            right: screenWidth * -0.25,
            child: GestureDetector(
              onTap: () {
                selectImage(); // Call selectImage function to choose an image from the gallery
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.add,
                  size: 50,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenWidth * 1.7,
            left: screenWidth * 0.28,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
                // Add your login functionality here
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff494949),
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: const BorderSide(color: Color(0xff494949), width: 2.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
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
}
