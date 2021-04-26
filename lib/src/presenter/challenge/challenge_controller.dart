import 'package:dev_quiz/src/domain/entities/question.dart';
import 'package:dev_quiz/src/domain/entities/quiz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChallengeController {
  final Quiz quiz;
  final pageController = PageController();

  final currentQuestionNotifier = ValueNotifier<int>(0);
  int get currentQuestionIndex => currentQuestionNotifier.value;
  set currentQuestionIndex(int value) => currentQuestionNotifier.value = value;

  final finishedNotifier = ValueNotifier<bool>(false);
  bool get finished => finishedNotifier.value;
  set finished(bool value) => finishedNotifier.value = value;

  bool get isOnLastQuestion {
    return currentQuestionIndex == quiz.questions.length - 1;
  }

  ChallengeController({required this.quiz}) {
    pageController.addListener(() {
      currentQuestionIndex = pageController.page!.toInt();
    });
  }

  void nextQuestion() {
    if (isOnLastQuestion) {
      return;
    }

    pageController.nextPage(
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );
  }

  void finish() {
    finished = true;
  }
}
