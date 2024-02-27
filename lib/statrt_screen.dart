import "package:flutter/material.dart";

class StatrtScreen extends StatelessWidget {
  const StatrtScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Start Quiz"),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          )
        ],
      ),
    );
  }
}
