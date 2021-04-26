// import 'package:dev_quiz/home/home_page.dart';
import 'package:flutter/material.dart';

import '../src/presenter/home/home_page.dart';
import 'app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
      theme: ThemeData(
        primaryColor: AppColors.purple,
        accentColor: AppColors.green,
        // platform: TargetPlatform.iOS,
      ),
    );
  }
}
