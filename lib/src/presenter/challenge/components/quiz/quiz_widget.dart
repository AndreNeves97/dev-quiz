import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import '../../../../domain/entities/answer.dart';
import '../../../../domain/entities/question.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatefulWidget {
  final Question question;
  final Function(int) onSelect;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelect,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int? selectedAnswerIndex;

  List<Widget> get answersWidgetsList {
    return [
      for (int i = 0; i < widget.question.answers.length; i++)
        answerObjectToWidget(
          widget.question.answers[i],
          i,
        )
    ];
  }

  Widget answerObjectToWidget(Answer answer, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: AnswerWidget(
        answer: answer,
        isSelected: selectedAnswerIndex == index,
        disabled: selectedAnswerIndex != null,
        onTap: () => selectAnswer(index),
      ),
    );
  }

  void selectAnswer(int index) {
    setState(() {
      selectedAnswerIndex = index;
    });

    widget.onSelect(index);
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
              widget.question.title,
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
