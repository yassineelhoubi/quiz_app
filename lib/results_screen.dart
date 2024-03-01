import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/text_title.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnsers});
  final List<String> chosenAnsers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnsers.length; i++) {
      summary.add({
        "index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnsers[i],
      });
    }
    return summary;
  }

  @override
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
            QuestionsSummary(getSummaryData()),
            OutlinedButton.icon(
              onPressed: () {
                print(chosenAnsers);
              },
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
