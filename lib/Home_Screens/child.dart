import 'dart:typed_data';

import 'package:flutter/material.dart' hide BoxDecoration,BoxShadow;
import 'package:flutter_application_1/Home_Screens/child2.dart';
import 'package:flutter_application_1/SignUp_Screens/signup_1.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class childProfile extends StatefulWidget {
  const childProfile({Key? key}) : super(key: key);

  @override
  State<childProfile> createState() => _childProfileState();
}

class _childProfileState extends State<childProfile> {
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
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.3,
            child: const Center(
              child: Text(
                'Create Child\'s Profile',
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
            top: screenWidth * 0.3,
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
            top: screenWidth * 0.45,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Center(
              child: Container(
                width: 140,
                height: 140,
                child: _image != null
                    ? CircleAvatar(
                        radius: 64,
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
            top: screenWidth * 0.45,
            left: screenWidth * 0.58,
            child: IconButton(
              onPressed: selectImage,
              icon: const Icon(Icons.add_a_photo_sharp),
            ),
          ),
          Positioned(
            top: 370.0,
            left: 15,
            child: SizedBox(
              width: 380.0,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffE6FFE1),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE6FFE1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(10, 10),
                        inset: true,
                      )
                    ]                    
                      ),
                  //     BoxShadow(
                  //       color: Color.fromARGB(255, 157, 217, 142),
                  //       spreadRadius: 5,
                  //       blurRadius: 10,
                  //       offset: Offset(-10, -10),
                  //       inset: true,
                  //     ),
                  //   ],
                  //   gradient: LinearGradient(
                  //   colors:[
                  //       Color(0xffE6FFE1),
                  //       Color.fromARGB(255, 155, 217, 142),
                  //       ] ,
                  //       begin: Alignment.topLeft,
                  //       end: Alignment.bottomRight,
                  //       stops: [
                  //         0.1,
                  //         09,
                  //       ]
                  //   )
                  // ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 14.0,
                        color: Color(0xff494949),
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Child\'s Name',
                        labelStyle: TextStyle(
                          color: Color(0xff494949),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.person_3_outlined,
                          color: Color(0xff494949),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Positioned(
            top: 450.0,
            left: 15,
            child: SizedBox(
              width: 380.0,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffE6FFE1),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffE6FFE1).withOpacity(1),
                        spreadRadius: 100,
                        blurRadius: 10,
                        offset: Offset(2, 6),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 14.0,
                        color: Color(0xff494949),
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        labelStyle: TextStyle(
                          color: Color(0xff494949),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xff494949),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 610.0,
            left: 114,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Child2(),
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
          Positioned(
            top: 680.0,
            left: 75,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Child2(),
                  ),
                );
                // Add your login functionality here
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff494949),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: const BorderSide(color: Color(0xff494949), width: 2.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  'Add Child +',
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
