import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;

  QuestionWidget(this.question);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 50, bottom: 20, left: 30, right: 30),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
