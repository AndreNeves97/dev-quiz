import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/presenter/challenge/components/action_button/action_button_widget.dart';
import 'package:flutter/material.dart';

import '../../challenge_controller.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ChallengeController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: controller.currentQuestionNotifier,
      builder: (context, value, _) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ValueListenableBuilder<bool>(
          valueListenable: controller.finishedNotifier,
          builder: (context, value, _) {
            return ButtonsWidget(controller: controller);
          },
        ),
      ),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ChallengeController controller;

  void next() {
    controller.nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if (!controller.isOnLastQuestion)
          Expanded(
            child: ActionButtonWidget.white(
              label: 'Pular',
              onTap: next,
            ),
          ),
        SizedBox(width: 7),
        if (controller.isOnLastQuestion && controller.finished)
          Expanded(
            child: ActionButtonWidget.green(
              label: 'Confirmar',
              onTap: next,
            ),
          )
      ],
    );
  }
}
