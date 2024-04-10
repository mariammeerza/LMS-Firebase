import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/child.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {


 void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image.asset(
              //   'assets/welcome.png',
              //   height: MediaQuery.of(context).size.width * 0.3, // Adjusted image height for responsiveness
              //   width: MediaQuery.of(context).size.width * 0.8, // Adjusted image width for responsiveness
              // ),
              SizedBox(height: 16),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontFamily: 'OnboardFont1',
                  fontSize: 28.0,
                  color: Color(0xff494949),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'You have successfully reset and',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 18.0,
                  color: Color(0xff494949),
                ),
              ),
              Text(
                'created a new password',
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
                    'Go to Home Page',
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


    void _navigateToHomePage(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const childProfile(),
        ),
    );
  }


  bool _obscureText = true;
  bool _obscureConfirmText = true;

  @override
  Widget build(BuildContext context) {
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
            top: MediaQuery.of(context).size.width * 0.1,
            left: 0.9,
            right: MediaQuery.of(context).size.width * 0.48,
            child: const Center(
              child: Text(
                'Reset Password?',
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 26.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.15,
            child: const Center(
              child: Text(
                'Enter your email address to get the password reset link',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200.0,
            right: 20,
            child: SizedBox(
              width: 380.0,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffE6FFE1),
                    borderRadius: BorderRadius.circular(30.0),
                    // Remove the BoxShadow from here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      obscureText: _obscureText,
                      style: const TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 14.0,
                        color: Color(0xff494949),
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Color(0xff494949),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff494949),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300.0,
            right: 20,
            child: SizedBox(
              width: 380.0,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffE6FFE1),
                    borderRadius: BorderRadius.circular(30.0),
                    // Remove the BoxShadow from here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      obscureText: _obscureConfirmText,
                      style: const TextStyle(
                        fontFamily: 'OnboardFont2',
                        fontSize: 14.0,
                        color: Color(0xff494949),
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: const TextStyle(
                          color: Color(0xff494949),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff494949),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmText = !_obscureConfirmText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400.0,
            right: 65,
            child: ElevatedButton(
              onPressed: _showDialog,
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff494949),
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: const BorderSide(
                    color: Color(0xff494949),
                    width: 2.0,
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Reset Password',
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
