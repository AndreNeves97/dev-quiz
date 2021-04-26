import 'package:dev_quiz/src/domain/entities/answer.dart';

import '../../../../../core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final Answer answer;
  final bool isSelected;
  final bool disabled;
  final VoidCallback onTap;

  const AnswerWidget({
    Key? key,
    required this.answer,
    required this.isSelected,
    required this.disabled,
    required this.onTap,
  }) : super(key: key);

  Color get _backgroundColor {
    if (!isSelected) {
      return AppColors.white;
    }

    if (!answer.isRight) {
      return AppColors.lightRed;
    }

    return AppColors.lightGreen;
  }

  Color get _borderColor {
    if (!isSelected) {
      return AppColors.border;
    }

    if (!answer.isRight) {
      return AppColors.red;
    }

    return AppColors.green;
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(10);

    return IgnorePointer(
      ignoring: disabled,
      child: Container(
        height: 72,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.fromBorderSide(
            BorderSide(color: _borderColor),
          ),
        ),
        child: Material(
          borderRadius: borderRadius,
          color: _backgroundColor,
          child: InkWell(
            borderRadius: borderRadius,
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(answer.title, style: AppTextStyles.body),
                  ),
                  SizedBox(width: 15),
                  SelectBoxWidget(
                    isSelected: isSelected,
                    isRight: answer.isRight,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectBoxWidget extends StatelessWidget {
  const SelectBoxWidget({
    Key? key,
    required this.isRight,
    required this.isSelected,
  }) : super(key: key);

  final bool isRight;
  final bool isSelected;

  Color get _backgroundColor {
    if (!isSelected) {
      return AppColors.white;
    }

    if (!isRight) {
      return AppColors.darkRed;
    }

    return AppColors.darkGreen;
  }

  Color get _borderColor {
    if (!isSelected) {
      return AppColors.border;
    }

    if (!isRight) {
      return AppColors.darkRed;
    }

    return AppColors.darkGreen;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: _backgroundColor,
        border: Border.fromBorderSide(
          BorderSide(
            color: _borderColor,
          ),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: _backgroundColor,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Icon(
        Icons.check,
        size: 16,
        color: AppColors.white,
      ),
    );
  }
}
