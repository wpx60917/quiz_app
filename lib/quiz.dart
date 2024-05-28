import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
  return _QuizState();
 }
}

class _QuizState extends State<Quiz>{
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(122, 0, 102, 255),
            Color.fromARGB(121, 15, 68, 148),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: screenWidget,
      ),
    ),
  );
  }
}