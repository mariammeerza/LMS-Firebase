import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Maths_Screens/video.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({Key? key}) : super(key: key);

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  double _basicOperationsValue = 0.5;
  double _hcfLcmValue = 0.5;
  double _multiplyValue = 0.5;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Scaffold(
      body: Container(
        height: screenHeight * 0.15,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VideoScreen(),
                      ),
                        );
                  // Handle onTap for Basic Operations
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenHeight * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              "Basic Operations",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackShape: const RectangularSliderTrackShape(),
                                trackHeight: 6.0,
                                thumbShape: SliderComponentShape.noThumb,
                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
                                overlayColor: Colors.yellow.withAlpha(32),
                                activeTrackColor: Colors.yellow.withOpacity(0.7),
                                inactiveTrackColor: Colors.grey,
                              ),
                              child: Slider(
                                value: _basicOperationsValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    _basicOperationsValue = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  // Handle onTap for HCF And LCM
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenHeight * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              "HCF And LCM",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackShape: const RectangularSliderTrackShape(),
                                trackHeight: 6.0,
                                thumbShape: SliderComponentShape.noThumb,
                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
                                overlayColor: Colors.yellow.withAlpha(32),
                                activeTrackColor: Colors.yellow.withOpacity(0.7),
                                inactiveTrackColor: Colors.grey,
                              ),
                              child: Slider(
                                value: _hcfLcmValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    _hcfLcmValue = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  // Handle onTap for Time Tables
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenHeight * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              "Time Tables",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackShape: const RectangularSliderTrackShape(),
                                trackHeight: 6.0,
                                thumbShape: SliderComponentShape.noThumb,
                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
                                overlayColor: Colors.yellow.withAlpha(32),
                                activeTrackColor: Colors.yellow.withOpacity(0.7),
                                inactiveTrackColor: Colors.grey,
                              ),
                              child: Slider(
                                value: _multiplyValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    _multiplyValue = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SemiCircleCustomBar(),
    );
  }
}
