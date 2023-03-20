import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/question_and_answer_model.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key key,
    @required this.questions,
    @required this.counter,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      context
              .watch<QuestionAndAnswerModel>()
              .questions[context.watch<QuestionAndAnswerModel>().counter]
          ['question'],
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
