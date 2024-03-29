import 'package:dev_quiz/src/domain/entities/question.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/quiz.dart';
import 'challenge_controller.dart';
import 'components/app_bar/app_bar_widget.dart';
import 'components/bottom_navigation/bottom_navigation_widget.dart';
import 'components/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  final Quiz quiz;

  const ChallengePage({
    Key? key,
    required this.quiz,
  }) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  late ChallengeController controller;

  @override
  void initState() {
    controller = ChallengeController(quiz: widget.quiz);

    super.initState();
  }

  Widget questionObjectToWidget(Question question) {
    return QuizWidget(
      question: widget.quiz.questions[controller.currentQuestionIndex],
      onSelect: onSelectAnswer,
    );
  }

  void onSelectAnswer(int index) {
    if (controller.isOnLastQuestion) {
      controller.finish();
      return;
    }

    Future.delayed(Duration(milliseconds: 500)).then((value) {
      controller.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(controller: controller),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: widget.quiz.questions.map(questionObjectToWidget).toList(),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationWidget(
          controller: controller,
        ),
      ),
    );
  }
}
