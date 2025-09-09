import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.choosenAnswers, this.restartQuiz, {super.key});

  final void Function() restartQuiz;
  List<Map<String, Object>> dataSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  final List<String> choosenAnswers;
  @override
  Widget build(context) {
    final summary = dataSummary();
    final int totalNumOfQuestions = questions.length;
    final int numOfCorrectAnswered = summary.where((singledata) {
      return singledata['user_answer'] == singledata['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "You answered $numOfCorrectAnswered out of $totalNumOfQuestions correct answers",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionsSummary(summary),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: restartQuiz,
              icon: Icon(Icons.refresh_sharp, color: Colors.white),
              label: Text(
                "Restart Quiz!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
