import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questIndex;
  final void Function(int) answerQuestion;

  Quiz(
      {required this.questions,
      required this.questIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questIndex]['questionText'] as String),
        Answer(
            answerQuestion, questions[questIndex]['answers'] as List<Map<String, Object>>),
      ],
    );
  }
}
