import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

typedef MyOwnFunction = void Function(int score);

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score'] as int),
            answer['text'] as String,
          );
        }).toList()
      ],
    );
  }
}
