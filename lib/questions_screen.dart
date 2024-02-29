import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Question ...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton("Answer 1", () {}),
          AnswerButton("Answer 2", () {}),
          AnswerButton("Answer 3", () {}),
        ],
      ),
    );
  }
}
