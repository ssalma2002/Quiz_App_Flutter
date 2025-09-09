import 'package:quiz_app/models/quiz_question.dart';

List<QuizQuestion> questions = [
  QuizQuestion('What language is primarily used to write Flutter apps?', [
    'Dart',
    'Java',
    'Python',
    'C++',
  ]),
  QuizQuestion('Which company developed Flutter?', [
    'Google',
    'Facebook',
    'Microsoft',
    'Apple',
  ]),
  QuizQuestion('What is the command to create a new Flutter project?', [
    'flutter create project_name',
    'flutter new project_name',
    'flutter init project_name',
    'flutter start project_name',
  ]),
  QuizQuestion('Which widget is used to create a scrollable list in Flutter?', [
    'ListView',
    'Row',
    'Column',
    'Stack',
  ]),
  QuizQuestion('Which widget is used for immutable widgets in Flutter?', [
    'StatelessWidget',
    'StatefulWidget',
    'Container',
    'Scaffold',
  ]),
  QuizQuestion('What does the setState() method do?', [
    'Updates the state and rebuilds the widget',
    'Closes the app',
    'Deletes a widget',
    'Navigates to a new screen',
  ]),
  QuizQuestion('What is the root widget of a Flutter app?', [
    'MaterialApp',
    'Scaffold',
    'Container',
    'Column',
  ]),
  QuizQuestion(
    'Which widget is commonly used for app structure with app bar, body, etc.?',
    ['Scaffold', 'Container', 'Center', 'ListTile'],
  ),
  QuizQuestion('Which file contains the Flutter app’s dependencies?', [
    'pubspec.yaml',
    'main.dart',
    'config.dart',
    'settings.json',
  ]),
  QuizQuestion('Which method is the entry point of a Flutter app?', [
    'main()',
    'run()',
    'start()',
    'init()',
  ]),
];
