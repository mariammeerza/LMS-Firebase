import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class SemiCircleCustomBar extends StatefulWidget {
  const SemiCircleCustomBar({Key? key}) : super(key: key);

  @override
  _SemiCircleCustomBarState createState() => _SemiCircleCustomBarState();
}

class _SemiCircleCustomBarState extends State<SemiCircleCustomBar> {
  int _currentIndex = 2;

  final List<String> _routes = [
    '/home',
    '/learn',
    '/ai_tutor',
    '/test',
    '/connect',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            index: _currentIndex,
            height: 60.0,
            items: <Widget>[
              _buildNavItem('Home', 'assets/home3.png', 0),
              _buildNavItem('Learn', 'assets/learn.png', 1),
              _buildNavItem('AI Tutor', 'assets/ai_icon.png', 2),
              _buildNavItem('Test', 'assets/test.png', 3),
              _buildNavItem('Connect', 'assets/Connect.png', 4),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                Navigator.pushNamed(context, _routes[index]);
              });
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: _currentIndex == 2
                ? const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                : BorderRadius.zero,
            child: Container(
              height: 10,
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }

   Widget _buildNavItem(String title, String imagePath, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 30, height: 30),
        const SizedBox(height: 4),
        Text(
            title,
            style: const TextStyle(
              fontFamily: 'NavBar',
              fontSize: 16, 
              fontWeight: FontWeight.bold, 
              color: Color(0XFF454545), 
            ),
          ),
      ],
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class SemiCircleCustomBar extends StatelessWidget {
//   const SemiCircleCustomBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Image.asset('assets/home3.png', width: 30, height: 30),
//               Image.asset('assets/learn.png', width: 30, height: 30),
//               Image.asset('assets/ai_icon.png', width: 60, height: 60),
//               Image.asset('assets/test.png', width: 30, height: 30),
//               Image.asset('assets/Connect.png', width: 30, height: 30),
//             ])
//         // Add more icons/buttons here
//         );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_application_1/AI_Screens/aitutor_1.dart';
// import 'package:flutter_application_1/Connect_Screens/connect.dart';
// import 'package:flutter_application_1/Home_Screens/home_1.dart';
// import 'package:flutter_application_1/Learn_screens/learn.dart';
// import 'package:flutter_application_1/Test_Screens/test.dart';

// class SemiCircleCustomBar extends StatefulWidget {
//   const SemiCircleCustomBar({Key? key}) : super(key: key);

//   @override
//   _SemiCircleCustomBarState createState() => _SemiCircleCustomBarState();
// }

// class _SemiCircleCustomBarState extends State<SemiCircleCustomBar> {
//   int _currentIndex = 2;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         index: _currentIndex,
//         height: 60.0, // Increased height to accommodate text
//         items: <Widget>[
//           _buildNavigationItem('assets/home3.png', 'Home', 0),
//           _buildNavigationItem('assets/learn.png', 'Learn', 1),
//           _buildNavigationItem('assets/ai_icon.png', 'AI Tutor', 2),
//           _buildNavigationItem('assets/test.png', 'Test', 3),
//           _buildNavigationItem('assets/Connect.png', 'Connect', 4),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//           // Add navigation logic here if needed
//         },
//       ),
//     );
//   }

//   Widget _buildNavigationItem(String imagePath, String label, int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _currentIndex = index;
//         });
//         // Add navigation logic here if needed
//         switch (index) {
//           case 0:
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const HomePage()),
//             );
//             break;
//           case 1:
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const Learn()),
//             );
//             break;
//           case 2:
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const AItutor()),
//             );
//             break;
//           case 3:
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const TestScreen()),
//             );
//             break;
//           case 4:
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const Connect()),
//             );
//             break;
//           default:
//             break;
//         }
//       },
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(imagePath, width: 30, height: 30),
//           const SizedBox(height: 4), 
//           Text(
//             label,
//             style: const TextStyle(
//               fontFamily: 'NavBar',
//               fontSize: 16, 
//               fontWeight: FontWeight.bold, 
//               color: Color(0XFF454545), 
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


