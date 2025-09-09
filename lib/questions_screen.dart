import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.addAnswerToList, {super.key});
  final void Function(String answerChoosen) addAnswerToList;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void nextQuestion(answerChoosen) {
    setState(() {
      currentQuestionIndex++;
      widget.addAnswerToList(answerChoosen);
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.question,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...currentquestion.shuffledAnswerList().map((answer) {
              return AnswerButton(answer, () {
                nextQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
