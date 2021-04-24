import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../../components/progress_indicator/app_linear_progress_indicador_widget.dart';

class QuizCardWidget extends StatelessWidget {
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
          Text('Gerenciamento de estado', style: AppTextStyles.heading2_15),
          SizedBox(height: 24),
          Row(
            children: [
              Text('3 de 10', style: AppTextStyles.body11),
              SizedBox(width: 21),
              Expanded(
                child: AppLinearProgressIndicatorWidget(value: 0.25),
              ),
            ],
          )
        ],
      ),
    );
  }
}
