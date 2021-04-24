import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/presenter/challenge/components/answer/answer_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: AppTextStyles.heading20),
          SizedBox(height: 24),
          AnswerWidget(
            title: 'Kit de desenvolvimento de interface de usuário',
            isWrong: false,
            isSelected: false,
          ),
          SizedBox(height: 8),
          AnswerWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
            isWrong: false,
            isSelected: true,
          ),
          SizedBox(height: 8),
          AnswerWidget(
            title: 'Acho que é uma marca de café do Himalaia',
            isWrong: false,
            isSelected: false,
          ),
          SizedBox(height: 8),
          AnswerWidget(
            title: 'Possibilita a criação de desktops que são muito incríveis',
            isWrong: true,
            isSelected: true,
          )
        ],
      ),
    );
  }
}
