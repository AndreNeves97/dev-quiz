import '../../../../../core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isWrong;
  final bool isSelected;

  const AnswerWidget({
    Key? key,
    required this.title,
    required this.isWrong,
    required this.isSelected,
  }) : super(key: key);

  Color get _backgroundColor {
    if (!isSelected) {
      return AppColors.white;
    }

    if (isWrong) {
      return AppColors.lightRed;
    }

    return AppColors.lightGreen;
  }

  Color get _borderColor {
    if (!isSelected) {
      return AppColors.border;
    }

    if (isWrong) {
      return AppColors.red;
    }

    return AppColors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: _borderColor),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(title, style: AppTextStyles.body),
          ),
          SizedBox(width: 15),
          SelectBoxWidget(
            isSelected: isSelected,
            isWrong: isWrong,
          )
        ],
      ),
    );
  }
}

class SelectBoxWidget extends StatelessWidget {
  const SelectBoxWidget({
    Key? key,
    required this.isWrong,
    required this.isSelected,
  }) : super(key: key);

  final bool isWrong;
  final bool isSelected;

  Color get _backgroundColor {
    if (!isSelected) {
      return AppColors.white;
    }

    if (isWrong) {
      return AppColors.darkRed;
    }

    return AppColors.darkGreen;
  }

  Color get _borderColor {
    if (!isSelected) {
      return AppColors.border;
    }

    if (isWrong) {
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
