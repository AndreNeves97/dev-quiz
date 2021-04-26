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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(controller: controller),
      body: PageView(
        controller: controller.pageController,
        children: widget.quiz.questions
            .map((question) => QuizWidget(question: widget.quiz.questions[0]))
            .toList(),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationWidget(
          controller: controller,
        ),
      ),
    );
  }
}
