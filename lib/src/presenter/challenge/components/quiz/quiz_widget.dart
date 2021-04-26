import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import '../../../../domain/entities/answer.dart';
import '../../../../domain/entities/question.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  final Question question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  List<Widget> get answersWidgetsList {
    return question.answers.map(answerObjectToWidget).toList();
  }

  Widget answerObjectToWidget(Answer answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: AnswerWidget(
        title: answer.title,
        isRight: false,
        isSelected: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 15,
              left: 20,
              right: 20,
            ),
            child: Text(
              question.title,
              style: AppTextStyles.heading20,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 15),
                ...answersWidgetsList,
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
