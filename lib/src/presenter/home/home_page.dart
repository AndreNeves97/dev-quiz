import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

import 'components/app_bar/app_bar_widget.dart';
import 'components/body/body_widget.dart';
import 'home_controller.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();

    loadData();
  }

  void loadData() async {
    controller.getUser();
    controller.getQuizzes();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.loading) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBarWidget(user: controller.user!),
      body: BodyWidget(quizzes: controller.quizzes!),
    );
  }
}
