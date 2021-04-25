import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final Color overlayColor;
  final VoidCallback onTap;

  const ActionButtonWidget({
    required this.label,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.overlayColor,
    required this.onTap,
  });

  ActionButtonWidget.white({required this.label, required this.onTap})
      : textColor = AppColors.lightGrey,
        backgroundColor = AppColors.white,
        borderColor = AppColors.border,
        overlayColor = AppColors.black.withOpacity(0.1);

  ActionButtonWidget.green({required this.label, required this.onTap})
      : textColor = AppColors.white,
        backgroundColor = AppColors.darkGreen,
        borderColor = AppColors.darkGreen,
        overlayColor = AppColors.green.withOpacity(0.6);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: borderColor),
          ),
          overlayColor: MaterialStateProperty.all(overlayColor),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: AppTextStyles.heading15.copyWith(color: textColor),
        ),
      ),
    );
  }
}
