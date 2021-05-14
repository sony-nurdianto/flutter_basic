import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function questionAnswer;
  final List<Map<String, Object>> listQuestion;
  final int quesitonAnwerIndex;

  Quiz(
      {@required this.questionAnswer,
      @required this.listQuestion,
      @required this.quesitonAnwerIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(listQuestion[quesitonAnwerIndex]['questionText']),
        ...(listQuestion[quesitonAnwerIndex]['answer']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionAnswer(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
