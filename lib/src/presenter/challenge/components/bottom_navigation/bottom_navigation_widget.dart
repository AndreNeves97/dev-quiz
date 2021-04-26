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

  bool get isOnLastQuestion {
    return controller.currentQuestion == controller.quiz.questions.length - 1;
  }

  bool get shouldShowSkipButton {
    return !isOnLastQuestion;
  }

  String get rightButtonText {
    if (isOnLastQuestion) {
      return 'Confirmar';
    }

    return 'Próxima';
  }

  void next() {
    if (isOnLastQuestion) {
      controller.finish();
      return;
    }

    controller.nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: controller.currentQuestionNotifier,
      builder: (context, value, _) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (shouldShowSkipButton)
              Expanded(
                child: ActionButtonWidget.white(
                  label: 'Pular',
                  onTap: next,
                ),
              ),
            SizedBox(width: 7),
            Expanded(
              child: ActionButtonWidget.green(
                label: rightButtonText,
                onTap: next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
