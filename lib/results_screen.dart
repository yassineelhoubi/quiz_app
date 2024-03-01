import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/text_title.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextTitle("You answerd X of Y questions correctly!"),
            const SizedBox(height: 30),
            const Text("List of answers and questions ..."),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_outlined),
              label: const Text("Restart Quiz!"),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
