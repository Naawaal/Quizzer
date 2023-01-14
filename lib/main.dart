import 'package:flutter/material.dart';
import 'package:quizzer/homepage.dart';

void main() {
  runApp(const Quizzer());
}

class Quizzer extends StatelessWidget {
  const Quizzer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quizzer',
      home: Homepage(),
    );
  }
}
