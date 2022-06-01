import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function(int) selectHandler;
  final List<Map<String, Object>> answers;

  Answer(this.selectHandler, this.answers);

  Container answerWid(Map<String, Object> answer) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () => selectHandler(answer['score'] as int),
        child: Text(answer['text'] as String),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Container> answersWid = answers.map((e) => answerWid(e)).toList();
    return Column(children: answersWid,);
  }
}
