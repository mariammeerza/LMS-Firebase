import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/home_1.dart';
import 'package:flutter_application_1/Login_Screens/ForgotPassword.dart';
import 'package:flutter_application_1/SignUp_Screens/signup_1.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 180, 216, 174),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Welcome Text
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
              top: 330.0,
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 34.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
            // Phone Number TextField without Inner Shadow
            Positioned(
              top: 400.0,
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
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Color(0xff494949),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.smartphone,
                            color: Color(0xff494949),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox for spacing
            const SizedBox(
              height: 20,
            ),
            // Password TextField without Inner Shadow
            Positioned(
              top: 490.0,
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
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xff494949),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff494949),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Forgot Password? text
            Positioned(
              top: 555.0,
              right: 25,
              child: GestureDetector(
                onTap: () {
                  // Navigate to ForgotPasswordPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            // Login Button with Border and Shadow
            Positioned(
              top: 615.0,
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
                    side:
                        const BorderSide(color: Color(0xff494949), width: 2.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'LoginPage1',
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // Continue with Google Button
            Positioned(
              top: 705.0,
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
            // Don't have an account? Sign up text
            Positioned(
              top: 760.0,
              left: 85,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 16.0,
                    color: Color(0xff494949),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 760.0,
              left: 270,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                  // Add your navigation to the Sign-up screen here
                },
                child: const Text(
                  'Sign Up',
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
