import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/quiz.dart';

const questions = [
  {
    'questionText': "Who is the First Test Captain of Sri Lanka?",
    'answers': [
      {'text': "Arjuna Ranathunga", 'isCorrect': false},
      {'text': "Duleep Mendis", 'isCorrect': false},
      {'text': "Bandula Warnapura", 'isCorrect': true},
      {'text': "Sidath Weththamuni", 'isCorrect': false},
    ]
  },
  {
    'questionText': "Who Scored the Most runs for Sri Lanka in ODIs?",
    'answers': [
      {'text': "Thilakarathan Dilshan", 'isCorrect': false},
      {'text': "Kumar Sangakkara", 'isCorrect': true},
      {'text': "Mahela Jayawardena", 'isCorrect': false},
      {'text': "Sanath Jayasuriya", 'isCorrect': false},
    ]
  },
  {
    'questionText':
        "Who Captain the Sri Lankan Team at 2007 Cricket World Cup?",
    'answers': [
      {'text': "Marvan Athapattu", 'isCorrect': false},
      {'text': "Sanath jayasuriya", 'isCorrect': false},
      {'text': "Mahela Jayawardena", 'isCorrect': true},
      {'text': "Kumar Sangakkara", 'isCorrect': false},
    ]
  },
  {
    'questionText': "Who Scored the Most runs for Sri Lanka in Test?",
    'answers': [
      {'text': "Marvan Athapattu", 'isCorrect': false},
      {'text': "Mahela Jayawardena", 'isCorrect': false},
      {'text': "Kumar Sangakkara", 'isCorrect': true},
      {'text': "Aravinda de Silva", 'isCorrect': false},
    ]
  },
  {
    'questionText':
        "Who was the Third Highest Run Scorer for Sri Lankan  at 2011 Cricket World Cup?",
    'answers': [
      {'text': "Mahela Jayawardena", 'isCorrect': false},
      {'text': "Thilakarathan Dilshan", 'isCorrect': false},
      {'text': "Upul Tharanga", 'isCorrect': true},
      {'text': "Kumar Sangakkara", 'isCorrect': false},
    ]
  },
];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0.0;

  void _onQuestionAnswerd(bool isCorrect) {
    if (isCorrect) {
      _totalScore = (_totalScore + 100);
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void restratQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Cric Quiz"),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  onQuestionAnswerd: _onQuestionAnswerd,
                  questions: questions,
                  questionIndex: _questionIndex)
              : Center(
                  child: Result(_totalScore / questions.length, restratQuiz),
                )),
    );
  }
}
