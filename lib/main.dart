import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _question = [
    {
      'questionText': 'what\'s your favorit color\'s ?',
      'answer': [
        {'text': 'yellow', 'score': 10},
        {'text': 'brown', 'score': 40},
        {'text': 'blue', 'score': 20},
        {'text': 'green', 'score': '30'}
      ]
    },
    {
      'questionText': 'what\'s your favorit animal\'s ?',
      'answer': [
        {'text': 'Horse', 'score': 10},
        {'text': 'chiken', 'score': 20},
        {'text': 'ox', 'score': 40},
        {'text': 'dog', 'score': 30}
      ]
    },
    {
      'questionText': 'what\'s your favorit music genre music ?',
      'answer': [
        {'text': 'Hip Hop', 'score': 40},
        {'text': 'Jazz', 'score': 30},
        {'text': 'Acoustic', 'score': 20},
        {'text': 'Rock', 'score': 10}
      ]
    }
  ];

  void _answerquestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _restartQuiz() {
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
          title: Text('flutter App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                questionAnswer: _answerquestion,
                listQuestion: _question,
                quesitonAnwerIndex: _questionIndex)
            : Result(
                totalScore: _totalScore,
                resetQuiz: _restartQuiz,
              ),
      ),
    );
  }
}
