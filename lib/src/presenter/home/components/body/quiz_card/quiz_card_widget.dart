import 'package:dev_quiz/src/presenter/challenge/challenge_page.dart';
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

  void _openQuiz(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChallengePage(quiz: quiz),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);

    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        borderRadius: borderRadius,
        // color: AppColors.white,
      ),
      child: Material(
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: () => _openQuiz(context),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: QuizCardContentWidget(quiz),
          ),
        ),
      ),
    );
  }
}

class QuizCardContentWidget extends StatelessWidget {
  const QuizCardContentWidget(this.quiz);

  final Quiz quiz;

  String get progressInfo {
    return '${quiz.questionsAnswers.length} de ${quiz.questions.length}';
  }

  double get progressPercent {
    return quiz.questionsAnswers.length / quiz.questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          child: Image.asset(AppImages.getIconAssetUrl(quiz.assetImage)),
        ),
        SizedBox(height: 24),
        Text(
          quiz.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.heading2_15,
        ),
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
    );
  }
}
