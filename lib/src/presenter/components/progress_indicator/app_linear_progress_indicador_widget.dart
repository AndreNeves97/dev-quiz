import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class AppLinearProgressIndicatorWidget extends StatelessWidget {
  final double value;

  const AppLinearProgressIndicatorWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 4,
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(
        AppColors.chartPrimary,
      ),
    );
  }
}
