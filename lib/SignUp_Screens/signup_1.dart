import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';
import 'package:flutter_application_1/SignUp_Screens/referral.dart';
import 'package:flutter_application_1/SignUp_Screens/verification.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 180, 216, 174),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              top: 50.0,
              child: Text(
                'Welcome To',
                style: TextStyle(
                  fontFamily: 'LoginPage',
                  fontSize: 24.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
            // Image
            Positioned(
              top: 100.0,
              child: Image.asset(
                'assets/img1splash.png',
                height: 150,
              ),
            ),
            const Positioned(
              top: 300.0,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 34.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
            Positioned(
              top: 370.0,
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
                          labelText: 'Parent name',
                          labelStyle: TextStyle(
                            color: Color(0xff494949),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.person,
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
                      // Remove the BoxShadow from here
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
                          labelText: 'Email ID',
                          labelStyle: TextStyle(
                            color: Color(0xff494949),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.email,
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
              top: 530.0,
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
                      // Remove the BoxShadow from here
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          fontFamily: 'OnboardFont2',
                          fontSize: 14.0,
                          color: Color(0xff494949),
                          fontWeight: FontWeight.normal,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Color(0xff494949),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.phone,
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
                      // Remove the BoxShadow from here
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        obscureText: !_isPasswordVisible,
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
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            child: Icon(
                              _isPasswordVisible
                                  ? Icons.lock_open
                                  : Icons.lock,
                              color: const Color(0xff494949),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 670.0,
              child: Text(
                'By continuing you agree to our terms and conditions.',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Positioned(
              top: 698.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Add your "Continue with Google" functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xff494949),
                  backgroundColor: const Color(0xffE6FFE1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side:
                        const BorderSide(color: Color(0xff494949), width: 2.0),
                  ),
                ),
                icon:
                    Image.asset('assets/google.png', height: 30.0, width: 30.0),
                label: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    'or Continue with Google',
                    style: TextStyle(
                      fontFamily: 'OnboardFont2',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 755.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationPage(),
                    ),
                  );
                  // Add your login functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xff494949),
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side:
                        const BorderSide(color: Color(0xff494949), width: 2.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Sign Up',
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
              top: 815.0,
              left: 95,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  "Already an account? ",
                  style: TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 16.0,
                    color: Color(0xff494949),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 815.0,
              left: 255,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                  // Add your navigation to the Sign-up screen here
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff494949),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 835.0,
              left: 85,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  "Have a referral code?",
                  style: TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 16.0,
                    color: Color(0xff494949),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 835.0,
              left: 255,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReferralPage(),
                    ),
                  );
                },
                child: const Text(
                  'Tap Here',
                  style: TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff494949),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
