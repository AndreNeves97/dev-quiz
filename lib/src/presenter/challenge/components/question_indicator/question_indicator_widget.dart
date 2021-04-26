import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import '../../../../domain/entities/question.dart';
import '../../../components/progress_indicator/app_linear_progress_indicador_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentQuestion;
  final List<Question> questions;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentQuestion,
    required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentQuestionText =
        (currentQuestion + 1).toString().padLeft(2, '0');
    final totalQuestionsText = questions.length;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Questão $currentQuestionText',
              style: AppTextStyles.bodyLightGrey15,
            ),
            Text(
              'de $totalQuestionsText',
              style: AppTextStyles.bodyLightGrey15,
            ),
          ],
        ),
        SizedBox(height: 16),
        AppLinearProgressIndicatorWidget(
          value: (currentQuestion) / questions.length,
        )
      ],
    );
  }
}
