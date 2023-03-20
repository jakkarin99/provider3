import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/question_widget.dart';
import '../controller/check_answer_widget.dart';
import '../controller/elevated_button_widget.dart';
import '../model/question_and_answer_model.dart';

class NewQuizAppHome extends StatelessWidget {
  const NewQuizAppHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('New Quiz App Home Page'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Start the Quiz, test your English vocabulary: \nFind the right Synonym! \nClick any button and check your answer!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  QuestionWidget(
                    /// static method Provider.of<T>(context), which will behave similarly to watch
                    ///
                    questions: Provider.of<QuestionAndAnswerModel>(context).questions,
                    counter: context.watch<QuestionAndAnswerModel>().counter,
                  ),
                  ...(context.watch<QuestionAndAnswerModel>().questions[context.watch<QuestionAndAnswerModel>().counter]
                          ['answers'] as List<String>)
                      .map(
                        (answer) => ElevatedButtonWidget(
                          answer: answer,
                        ),
                      )
                      .toList(),
                  CheckAnswerWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
