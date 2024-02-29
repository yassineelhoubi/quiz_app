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
  var currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
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
              return AnswerButton(answer, nextQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
