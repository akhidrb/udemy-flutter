import 'package:flutter/material.dart';
import './question.dart';

class Result extends StatelessWidget {
  final VoidCallback goBackAction;

  Result(this.goBackAction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question("Done with Questions !!"),
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
