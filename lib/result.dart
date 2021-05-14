import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result({this.totalScore, this.resetQuiz});

  String get resultPhrase {
    var resultText = 'You Did It';
    if (totalScore >= 90) {
      resultText = 'YOU WON';
    } else if (totalScore >= 90) {
      resultText = 'You did well';
    } else if (totalScore <= 50) {
      resultText = 'Well Done';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        RaisedButton(
          child: Text('Restart quiz'),
          onPressed: resetQuiz,
        ),
      ],
    );
  }
}
