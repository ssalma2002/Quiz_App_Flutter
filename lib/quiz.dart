import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // 1. initState + activeScreen is a widget
  // Widget? activeScreen ;
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }
  // void switchScreen(){
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }

  // 2. No initScreen + activeScreen is string var + ternary expressions
  // 3. No initScreen + activeScreen is string var + if + var ScreenWidget inside build
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  List<String> answersChoosen = [];
  void addAnswerToList(answer) {
    answersChoosen.add(answer);
    if (answersChoosen.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
      answersChoosen.clear();
    });
  }

  @override
  // 3. ScreenWidget
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(addAnswerToList);
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(answersChoosen, restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // 1. child: activeScreen
          // 2. child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : QuestionsScreen(),
          child: screenWidget,
        ),
        backgroundColor: const Color.fromARGB(255, 96, 121, 220),
      ),
    );
  }
}
