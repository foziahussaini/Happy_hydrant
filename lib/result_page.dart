import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int water;
  final String advice;

  const ResultPage({super.key, required this.water, required this.advice});

  @override
  Widget build(BuildContext context) {
    /// TODO 13
    /// Calculate number of glasses
    /// One glass = 250 ml
    int glasses = water ~/ 250;


    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE3F2FD), Color(0xFFBBDEFB)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_drink_rounded,
              size: 100,
              color: Colors.blueAccent,
            ),

            const SizedBox(height: 20),

            /// TODO 14
            /// Display the water amount in ml
            Text(
              '$water ml',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            /// TODO 15
            /// Display number of glasses
            Text(
              'Equivalent to $glasses glasses (250ml each)',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            /// TODO 16
            /// Display advice text
            Text(
              advice,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 40),

            ElevatedButton.icon(
              onPressed: () {
                /// TODO 17
                /// Go back to previous page using Navigator.pop()
                Navigator.pop(context);
              },

              icon: const Icon(Icons.refresh),
              label: const Text("RECALCULATE"),
            ),
          ],
        ),
      ),
    );
  }
}
