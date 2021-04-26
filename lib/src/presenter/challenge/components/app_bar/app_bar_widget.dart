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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: QuestionIndicatorWidget(),
          ),
        ],
      ),
    );
  }
}
