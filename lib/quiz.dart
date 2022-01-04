import "package:flutter/material.dart";
import 'question.dart';
import "answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function onQuestionAnswerd;
  final int questionIndex;

  Quiz(
      {@required this.onQuestionAnswerd,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionWidget(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'] as String,
              () => onQuestionAnswerd(answer['isCorrect']));
        }).toList()
      ],
    );
  }
}
