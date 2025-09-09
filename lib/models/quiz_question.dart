class QuizQuestion {
  QuizQuestion(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> shuffledAnswerList(){
    final shuffledAnswerList = List.of(answers);
    shuffledAnswerList.shuffle();
    return shuffledAnswerList;
  }
}
