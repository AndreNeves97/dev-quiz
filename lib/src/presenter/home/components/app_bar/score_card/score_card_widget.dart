import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(width: 1, color: AppColors.border),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChartWidget(),
            SizedBox(
              width: 28,
            ),
            Expanded(child: ScoreTextWidget()),
          ],
        ),
      ),
    );
  }
}

class ScoreTextWidget extends StatelessWidget {
  const ScoreTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vamos começar',
          style: AppTextStyles.heading,
        ),
        Text(
          'Complete os desafios e avance em conhecimento',
          style: AppTextStyles.body,
        )
      ],
    );
  }
}
