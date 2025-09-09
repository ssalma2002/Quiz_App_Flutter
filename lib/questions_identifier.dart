import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(
    this.questionIndex,
    this.isCorrectAnswer, {
    super.key,
  });
  final int questionIndex;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Color.fromARGB(255, 39, 249, 130)
            : Color.fromARGB(255, 255, 86, 77),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        (questionNumber).toString(),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
