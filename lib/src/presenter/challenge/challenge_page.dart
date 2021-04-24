import 'package:flutter/material.dart';

import 'components/app_bar/app_bar_widget.dart';
import 'components/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: QuizWidget(title: 'O que o Flutter faz em sua totalidade?'),
      ),
    );
  }
}
