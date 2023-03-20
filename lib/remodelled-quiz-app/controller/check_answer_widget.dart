import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/question_and_answer_model.dart';

class CheckAnswerWidget extends StatelessWidget {
  const CheckAnswerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<QuestionAndAnswerModel>().answerChecking,
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }
}
