import 'package:flutter/material.dart';

import '../../../../../domain/entities/level.dart';
import 'level_button_widget.dart';

class LevelButtonsWidget extends StatelessWidget {
  final List<Level> availableLevels;

  const LevelButtonsWidget({Key? key, required this.availableLevels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: availableLevels
          .map(
            (level) => LevelButtonWidget(
              level: level,
            ),
          )
          .toList(),
    );
  }
}
