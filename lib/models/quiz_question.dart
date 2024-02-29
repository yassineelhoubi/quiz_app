class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffeldAnswers() {
    final shufflesAnswers = List.of(answers);
    shufflesAnswers.shuffle();
    return shufflesAnswers;
  }
}
