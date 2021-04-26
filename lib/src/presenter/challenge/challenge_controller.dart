import 'package:dev_quiz/src/domain/entities/question.dart';
import 'package:dev_quiz/src/domain/entities/quiz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChallengeController {
  final Quiz quiz;
  final pageController = PageController();

  final currentQuestionNotifier = ValueNotifier<int>(0);
  int get currentQuestion => currentQuestionNotifier.value;
  set currentQuestion(int value) => currentQuestionNotifier.value = value;

  ChallengeController({required this.quiz}) {
    pageController.addListener(() {
      currentQuestion = pageController.page!.toInt();
    });
  }

  void nextPage() {
    pageController.nextPage(
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );
  }

  void finish() {}
}
