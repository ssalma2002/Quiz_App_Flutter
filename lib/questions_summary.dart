import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.dataSummary, {super.key});
  final List<Map<String, Object>> dataSummary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: dataSummary.map((singleData) {
            final bool isCorrectAnswer =
                singleData['user_answer'] == singleData['correct_answer']
                ? true
                : false;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionsIdentifier(
                  singleData['question_index'] as int,
                  isCorrectAnswer,
                ),
                SizedBox(width: 25),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          singleData['question'] as String,
                          style: GoogleFonts.lato(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          singleData['user_answer'] as String,
                          style: TextStyle(
                            color: Color.fromARGB(255, 151, 8, 247),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          singleData['correct_answer'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 77, 211, 255),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
