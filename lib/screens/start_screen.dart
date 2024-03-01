import "package:flutter/material.dart";
import 'package:quiz_app/widgets/text_title.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const TextTitle("Learn Flutter the fun way!"),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            icon: const Icon(Icons.arrow_right_outlined),
            label: const Text("Start Quiz"),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          )
        ],
      ),
    );
  }
}
