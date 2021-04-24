import 'package:flutter/material.dart';

import '../question_indicator/question_indicator_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(100),
          child: AppBarContainerWidget(),
        );
}

class AppBarContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: QuestionIndicatorWidget(),
      ),
    );
  }
}
