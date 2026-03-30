import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState(weight: 60);
}

class _InputPageState extends State<InputPage> {
  /// TODO 1
  final int weight = 60;
  _InputPageState({required int weight});
  /// Create a variable to store the user's weight
  /// default value should be 60

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F5F9),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Water Calculator",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.1),
                ),
                child: const Icon(
                  Icons.water_drop,
                  size: 80,
                  color: Colors.blueAccent,
                ),
              ),

              Column(
                children: [
                  const Text(
                    "Your Weight",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      /// TODO 2
                      /// Show the weight value here
                      const Text(
                        " kg",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.blueAccent,
                    inactiveTrackColor: Colors.blue.withOpacity(0.2),
                    thumbColor: Colors.blueAccent,
                    overlayColor: Colors.blue.withOpacity(0.1),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 15.0,
                    ),
                  ),
                  child: Slider(
                    /// TODO 3
                    /// Connect the slider value with the weight variable
                    min: 30,
                    max: 120,
                    onChanged: (double value) {
                      /// TODO 4
                      /// Update the weight when slider changes
                      /// using setState},

                    }, value: 0,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    /// TODO 5
                    /// Create WaterCalculator object
                    /// pass the weight to it
                    /// TODO 6
                    /// Call calculateWater() and store the result

                    /// TODO 7
                    /// Get advice using getAdvice()

                    /// TODO 8
                    /// Navigate to ResultPage
                    /// pass water and advice values
                  },
                  child: const Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
