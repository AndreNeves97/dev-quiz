import 'package:dev_quiz/src/domain/entities/quiz.dart';
import 'package:flutter/material.dart';

import '../../challenge_controller.dart';
import '../question_indicator/question_indicator_widget.dart';

class AppBarWidget extends PreferredSize {
  final ChallengeController controller;

  AppBarWidget({
    required this.controller,
  }) : super(
          preferredSize: Size.fromHeight(100),
          child: AppBarContainerWidget(controller: controller),
        );
}

class AppBarContainerWidget extends StatelessWidget {
  final ChallengeController controller;

  const AppBarContainerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: ValueListenableBuilder<int>(
              valueListenable: controller.currentQuestionNotifier,
              builder: (context, currentQuestion, _) {
                return ValueListenableBuilder<bool>(
                  valueListenable: controller.finishedNotifier,
                  builder: (context, finished, _) => QuestionIndicatorWidget(
                    currentQuestion: currentQuestion,
                    questions: controller.quiz.questions,
                    finished: finished,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
