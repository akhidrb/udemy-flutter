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
  static const _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        "Red",
        "Green",
        "Blue",
        "Yellow",
        "Black",
        "Grey",
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        "Zebra",
        "Elephant",
        "Monkey",
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      if (_questIndex < _questions.length) {
        _questIndex += 1;
      }
    });
  }

  void _goToFirstPage() {
    setState(() => _questIndex = 0);
  }

  Widget _getPageType() {
    if (_questIndex < _questions.length) {
      return Quiz(
          questions: _questions,
          questIndex: _questIndex,
          answerQuestion: _answerQuestion);
    } else {
      return Result(_goToFirstPage);
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
