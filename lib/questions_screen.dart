import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/answer_button.dart';
import 'package:quiz_app/custom_widgets/text_title.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

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
            TextTitle(
              currentQuestion.text,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffeldAnswers().map((answer) {
              return AnswerButton(answer, () {});
            }),
          ],
        ),
      ),
    );
  }
}
