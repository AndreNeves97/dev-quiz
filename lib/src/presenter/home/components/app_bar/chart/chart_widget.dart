import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      child: Stack(
        children: [
          Center(child: ChartProgressWidget()),
          Center(child: ChartTextWidget())
        ],
      ),
    );
  }
}

class ChartProgressWidget extends StatelessWidget {
  const ChartProgressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      child: CircularProgressIndicator(
        strokeWidth: 10,
        value: 0.75,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation<Color>(
          AppColors.chartPrimary,
        ),
      ),
    );
  }
}

class ChartTextWidget extends StatelessWidget {
  const ChartTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('75%', style: AppTextStyles.heading);
  }
}
