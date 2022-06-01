import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Green", "score": 1},
        {"text": "Blue", "score": 5},
        {"text": "Black", "score": 10},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 1},
        {"text": "Horse", "score": 5},
        {"text": "Monkey", "score": 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      if (_questIndex < _questions.length) {
        _questIndex += 1;
      }
    });
  }

  void _goToFirstPage() {
    setState(() {
      _questIndex = 0;
      _totalScore = 0;
    });
  }

  Widget _getPageType() {
    if (_questIndex < _questions.length) {
      return Quiz(
          questions: _questions,
          questIndex: _questIndex,
          answerQuestion: _answerQuestion);
    } else {
      return Result(_goToFirstPage, _totalScore);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _getPageType(),
      ),
    );
  }
}
