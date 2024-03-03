import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/text_title.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/questions_summary.dart';

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
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data["correct_answer"] == data["user_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextTitle(
              "You answerd $numCorrectQuestions of $numTotalQuestions questions correctly!",
              textAlign: TextAlign.center,
              fontSize: 22,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                print(chosenAnsers);
              },
              icon: const Icon(Icons.refresh),
              label: const Text("Restart Quiz!"),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
