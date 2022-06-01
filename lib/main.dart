import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;
  static const questions = [
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
      if (_questIndex < questions.length - 1) {
        _questIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questIndex]['questionText'] as String),
            Answer(
                _answerQuestion, questions[_questIndex]['answers'] as List<String>),
          ],
        ),
      ),
    );
  }
}
