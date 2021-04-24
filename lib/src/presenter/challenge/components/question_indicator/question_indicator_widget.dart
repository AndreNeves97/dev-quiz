import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import '../../../components/progress_indicator/app_linear_progress_indicador_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Questão 04', style: AppTextStyles.body15),
            Text('de 10', style: AppTextStyles.body15),
          ],
        ),
        SizedBox(height: 16),
        AppLinearProgressIndicatorWidget(value: 0.25)
      ],
    );
  }
}
