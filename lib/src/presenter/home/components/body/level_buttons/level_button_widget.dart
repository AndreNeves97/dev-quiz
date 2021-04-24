import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../../../domain/entities/level.dart';

class LevelButtonWidget extends StatelessWidget {
  final Level level;

  LevelButtonWidget({Key? key, required this.level}) : super(key: key);

  final config = {
    Level.facil: {
      'label': 'Fácil',
      'textColor': AppColors.levelButtonTextFacil,
      'backgroundColor': AppColors.levelButtonFacil,
      'borderColor': AppColors.levelButtonBorderFacil
    },
    Level.medio: {
      'label': 'Médio',
      'textColor': AppColors.levelButtonTextMedio,
      'backgroundColor': AppColors.levelButtonMedio,
      'borderColor': AppColors.levelButtonBorderMedio
    },
    Level.dificil: {
      'label': 'Difícil',
      'textColor': AppColors.levelButtonTextDificil,
      'backgroundColor': AppColors.levelButtonDificil,
      'borderColor': AppColors.levelButtonBorderDificil
    },
    Level.perito: {
      'label': 'Perito',
      'textColor': AppColors.levelButtonTextPerito,
      'backgroundColor': AppColors.levelButtonPerito,
      'borderColor': AppColors.levelButtonBorderPerito
    },
  };

  String get label => config[level]!['label'] as String;
  Color get textColor => config[level]!['textColor'] as Color;
  Color get backgroundColor => config[level]!['backgroundColor'] as Color;
  Color get borderColor => config[level]!['borderColor'] as Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 32,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.fromBorderSide(
          BorderSide(color: borderColor),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Center(
        child: Text(
          label,
          style: AppTextStyles.bodyDark.copyWith(color: textColor),
        ),
      ),
    );
  }
}
