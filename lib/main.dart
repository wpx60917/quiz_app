import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(122, 0, 102, 255),
            Color.fromARGB(121, 15, 68, 148),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: const StartScreen(),
      ),
    ),
  ));
}
