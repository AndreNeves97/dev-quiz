import 'package:dev_quiz/src/domain/entities/quiz.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: QuizWidget(question: widget.quiz.questions[0]),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationWidget(),
      ),
    );
  }
}
