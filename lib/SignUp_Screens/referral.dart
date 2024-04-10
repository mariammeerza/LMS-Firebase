import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/child.dart';

class ReferralPage extends StatefulWidget {
  const ReferralPage({super.key});

  @override
  State<ReferralPage> createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
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
            right: MediaQuery.of(context).size.width * 0.55,
            child: const Center(
              child: Text(
                'Referral Code',
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
            right: MediaQuery.of(context).size.width * 0.5,
            child: const Center(
              child: Text(
                'Enter your referral code',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
              top: 180.0,
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
                          labelText: 'Enter Referral Code',
                          labelStyle: TextStyle(
                            color: Color(0xff494949),
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.smartphone_outlined,
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
              top: 300.0,
              right: 130,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const childProfile(),
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
                    'Done',
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