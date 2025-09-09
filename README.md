# 🎯 Flutter Quiz App  

A simple and interactive **quiz application** built with **Flutter**, demonstrating core concepts such as state management, widget composition, conditional rendering, and custom styling.  

---

## 📹 Demo  

<video src="demo/quiz-demo.mp4" controls width="1000"></video>

---

## ✨ Features  

- 📌 **Start Screen** → Simple landing page with a start button  
- 🔄 **State Management** → Implemented using **state lifting** (no external packages)  
- 📝 **MCQ Questions** →  
  - Stored in a **list of `QuizQuestion` objects** (question text + possible answers)  
  - **Answers are shuffled** on display, while correctness is tracked internally  
- 🎨 **UI & Styling** →  
  - Default Flutter widgets (`ElevatedButton`, `Text`, `Column`, etc.) with custom styling  
  - Integrated **Google Fonts** for consistent typography  
- 🧩 **Widgets** →  
  - Combined **Stateless** and **Stateful widgets**  
  - Used **initState()**, **Expanded**, and **SingleChildScrollView** for responsive layouts  
- ⚡ **Result Screen** →  
  - Displays score summary (e.g., *“You got 3 out of 5 correct”*)  
  - Shows user answers vs. correct answers  
  - Highlights correct answers in **green**, incorrect ones in **red**  
  - Includes a **Restart Quiz** button  

---

## 🚀 Getting Started  

### Prerequisites  
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed  
- An editor (VS Code, Android Studio, IntelliJ, etc.)  

### Run Locally  
```bash
# Clone this repo
git clone https://github.com/your-username/flutter-quiz-app.git

# Navigate into the project
cd flutter-quiz-app

# Get dependencies
flutter pub get

# Run the app
flutter run

### Project Structure 
lib/
├── data/
│ └── questions.dart # Stores quiz questions
├── models/
│ └── quiz_question.dart # QuizQuestion class (question + answers)
├── answers.dart # Widget for answer buttons
├── main.dart # Entry point of the app
├── questions_identifier.dart # Widget to show question index/identifier
├── questions_screen.dart # Screen for displaying questions
├── questions_summary.dart # Widget for showing user + correct answers
├── quiz.dart # Main quiz flow manager
├── result_screen.dart # Screen showing results and restart button
└── start_screen.dart # Start screen with "Begin Quiz" button



