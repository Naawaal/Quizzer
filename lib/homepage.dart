import 'package:flutter/material.dart';
import 'package:quizzer/classes/question.dart';
import 'package:quizzer/pages/question.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> scoreKeeper = [];

  List<Questions> questionBank = [
    Questions(
      questionText: 'First ODI (Cricket) in India was played in Ahemadabad.',
      questionAnswer: true,
      questionScore: 5,
    ),
    Questions(
      questionText: 'Goa is famous for not producing coconut.',
      questionAnswer: true,
      questionScore: 10,
    ),
    Questions(
      questionText: 'Polo was originated in Assam.',
      questionAnswer: false,
      questionScore: 5,
    ),
    Questions(
      questionText:
          'The first Indian to win a Nobel Prize was Rabindranath Tagore.',
      questionAnswer: true,
      questionScore: 10,
    ),
    Questions(
      questionText: 'The Khalsa was born in 1699..',
      questionAnswer: true,
      questionScore: 10,
    ),
    Questions(
      questionText: 'Lata Mangeshkar won the Padma Bhushan in 1960.',
      questionAnswer: false,
      questionScore: 5,
    ),
    Questions(
      questionText:
          'The first captain of the first ODI Indian team was Sunil Gavaskar.',
      questionAnswer: false,
      questionScore: 10,
    ),
    Questions(
      questionText: 'Baseball originated in Australia.',
      questionAnswer: false,
      questionScore: 10,
    ),
    Questions(
      questionText:
          ' Red and green lights are used to indicate foul in ice hockey',
      questionAnswer: false,
      questionScore: 8,
    ),
  ];

  var questionNumber = 0;

  var score = 0;

  void _reset() {
    setState(() {
      questionNumber = 0;
      score = 0;
      scoreKeeper = [];
    });
  }

  void _addScore() {
    setState(() {
      score += questionBank[questionNumber].questionScore;
    });
  }

  void _question() {
    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Quizzer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        actions: [
          Text('Score: $score',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              )),
        ],
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      body: questionNumber < questionBank.length
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Question(
                  Text: questionBank[questionNumber].questionText,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: MaterialButton(
                      onPressed: () {
                        bool correctAnswer =
                            questionBank[questionNumber].questionAnswer;
                        if (correctAnswer == true) {
                        } else {}
                        setState(() {
                          _addScore();
                          _question();
                        });
                      },
                      color: Colors.green,
                      child: const Text(
                        'True',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: MaterialButton(
                      onPressed: () {
                        bool correctAnswer =
                            questionBank[questionNumber].questionAnswer;
                        if (correctAnswer == false) {
                        } else {}
                        setState(() {
                          _addScore();
                          _question();
                        });
                      },
                      color: Colors.red,
                      child: const Text(
                        'False',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: scoreKeeper,
                ),
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your Score is $score',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    onPressed: _reset,
                    color: Colors.grey[900],
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
