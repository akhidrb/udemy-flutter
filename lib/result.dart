import 'package:flutter/material.dart';
import './question.dart';

class Result extends StatelessWidget {
  final VoidCallback goBackAction;
  final int totalScore;

  Result(this.goBackAction, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question("Done with Questions !!"),
        Question("Your Score is: $totalScore"),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: goBackAction,
          child: const Text("Go Back"),
        ),
      ],
    );
  }
}
