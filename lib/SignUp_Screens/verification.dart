import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_application_1/Home_Screens/home_1.dart';
import 'dart:async';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/welcome.png',
                height: MediaQuery.of(context).size.width * 0.3, // Adjusted image height for responsiveness
                width: MediaQuery.of(context).size.width * 0.8, // Adjusted image width for responsiveness
              ),
              
              const SizedBox(height: 16),
              const Text(
                'Welcome Onboard!',
                style: TextStyle(
                  fontFamily: 'OnboardFont1',
                  fontSize: 28.0,
                  color: Color(0xff494949),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'You have successfully created',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 18.0,
                  color: Color(0xff494949),
                ),
              ),
              const Text(
                'an account',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 18.0,
                  color: Color(0xff494949),
                ),
              ),
            ],
          ),
          actions: [
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _navigateToHomePage();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: const BorderSide(
                    color: Color(0xff494949),
                    width: 2.0,
                  ),
                ),
                color: Colors.yellow,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                    vertical: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: const Text(
                    'Let\'s Go',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1',
                      fontSize: 18.0,
                      color: Color(0xff494949),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  late Timer _resendCodeTimer;
  int _countdownSeconds = 10; // Set the initial countdown time to 10 seconds

  @override
  void initState() {
    super.initState();
    _resendCodeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdownSeconds > 0) {
        setState(() {
          _countdownSeconds--;
        });
      } else {
        _resendCodeTimer.cancel(); // Stop the timer when countdown reaches 0
      }
    });
  }

  @override
  void dispose() {
    _resendCodeTimer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  void _navigateToHomePage(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.width * 0.1,
      textStyle: const TextStyle(
        fontFamily: 'OnboardFont2',
        fontSize: 24,
        color: Color(0xff494949),
      ),
      decoration: BoxDecoration(
        color: const Color(0xffE6FFE1),
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.transparent),
      ),
    );

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
            top: MediaQuery.of(context).size.width * 0.07,
            left: 0.0,
            right: MediaQuery.of(context).size.width * 0.55,
            child: const Center(
              child: Text(
                'Almost there',
                style: TextStyle(
                  fontFamily: 'LoginPage',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.25,
            child: const Center(
              child: Text(
                'Enter the code sent by SMS for verification',
                style: TextStyle(
                  fontFamily: 'LoginPage',
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.4,
            left: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.03,
            child: Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border.all(
                    color: const Color(0xffE6FFE1),
                  ),
                ),
              ),
              onCompleted: (pin) => debugPrint(pin),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.6,
            left: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.03,
            child: ElevatedButton(
              onPressed: _showDialog,
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff494949),
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: const BorderSide(color: Color(0xff494949), width: 2.0),

                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                  vertical: MediaQuery.of(context).size.width * 0.02,
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.8,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                "Didn't receive any code?",
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.85,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                if (_countdownSeconds == 0) {
                  // Trigger the resend code logic here
                  // Reset the countdown timer
                  setState(() {
                    _countdownSeconds = 10;
                  });
                  _resendCodeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (_countdownSeconds > 0) {
                      setState(() {
                        _countdownSeconds--;
                      });
                    } else {
                      _resendCodeTimer.cancel(); // Stop the timer when countdown reaches 0
                    }
                  });
                }
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  _countdownSeconds > 0
                      ? "Resend code in $_countdownSeconds seconds"
                      : "Resend code",
                  style: const TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 16.0,
                    color: Color(0xff494949),
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
