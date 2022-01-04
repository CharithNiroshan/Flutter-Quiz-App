import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double _finalScore;
  final Function _restratQuiz;

  Result(this._finalScore, this._restratQuiz);

  String get resultText {
    if (_finalScore == 100) {
      return "Amazing !!!";
    } else if (_finalScore > 75) {
      return "Congratulations !!!";
    } else if (_finalScore > 50) {
      return "Good Try !!!";
    } else {
      return "Hard Luck !!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text(
              resultText,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Your Score",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              '$_finalScore%',
              style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            onPressed: _restratQuiz,
            child: Text("Try Again"),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
