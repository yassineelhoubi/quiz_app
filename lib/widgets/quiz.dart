import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  final List<String> selectedAnswers = [];
  bool showFloatingActionButton = false;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
      showFloatingActionButton = true;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
            chosenAnsers: selectedAnswers, onRestart: restartQuiz);
      });
    }
  }

  void restartQuiz() {
    selectedAnswers.clear();
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  void backToStartScreen() {
    showFloatingActionButton = false;
    selectedAnswers.clear();
    activeScreen = StartScreen(switchScreen);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Visibility(
          visible: showFloatingActionButton,
          child: FloatingActionButton(
            onPressed: () => setState(() {
              backToStartScreen();
            }),
            tooltip: 'Back to Start Screen',
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
