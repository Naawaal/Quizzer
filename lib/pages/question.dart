import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String Text;
  const Question({super.key, required this.Text});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Text(
        widget.Text,
        style: const TextStyle(
          fontSize: 28.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
