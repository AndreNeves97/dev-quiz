import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../../../domain/entities/quiz.dart';
import '../../../../components/progress_indicator/app_linear_progress_indicador_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final Quiz quiz;

  const QuizCardWidget({
    Key? key,
    required this.quiz,
  }) : super(key: key);

  String get progressInfo {
    return '${quiz.questionsAnswers.length} de ${quiz.questions.length}';
  }

  double get progressPercent {
    return quiz.questionsAnswers.length / quiz.questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.data),
          ),
          SizedBox(height: 24),
          Text(quiz.title, style: AppTextStyles.heading2_15),
          SizedBox(height: 24),
          Row(
            children: [
              Text(progressInfo, style: AppTextStyles.body11),
              SizedBox(width: 21),
              Expanded(
                child: AppLinearProgressIndicatorWidget(value: progressPercent),
              ),
            ],
          )
        ],
      ),
    );
  }
}
