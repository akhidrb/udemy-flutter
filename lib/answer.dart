import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final List<String> answers;

  Answer(this.selectHandler, this.answers);

  Container answerWid(String answer) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(answer),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Container> answersWid = answers.map((e) => answerWid(e)).toList();
    return Column(children: answersWid,);
  }
}
