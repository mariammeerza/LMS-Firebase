import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';

// ignore: camel_case_types
class verbal_lessons extends StatefulWidget {
  const verbal_lessons({super.key});

  @override
  State<verbal_lessons> createState() => _verbal_lessonsState();
}

// ignore: camel_case_types
class _verbal_lessonsState extends State<verbal_lessons> {
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
                            "Verbal Reasoning",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                            "Verbal Reasoning",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                            "Verbal Reasoning",
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
          ],
        ),
      ),
      bottomNavigationBar:SemiCircleCustomBar(),
    );
  }
}
