import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  // constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
