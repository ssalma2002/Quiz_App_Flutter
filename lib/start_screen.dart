import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizButton, {super.key});

  final void Function() startQuizButton;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            'assets/images/—Pngtree—quiz time bubble speech banner_9147207.png',
            width: 300,
          ),
        ),
        // Image.asset(
        //   'assets/images/—Pngtree—quiz time bubble speech banner_9147207.png',width: 300,
        // color: const Color.fromARGB(33, 255, 255, 255),
        // ),
        SizedBox(height: 5),
        Text(
          'Learn flutter the fun way',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          // TextStyle(color: Colors.white, fontSize: 24),
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: startQuizButton,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: Text('Start Quiz'),
        ),
      ],
    );
  }
}
