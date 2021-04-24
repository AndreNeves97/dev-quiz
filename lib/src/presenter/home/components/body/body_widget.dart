import 'package:flutter/material.dart';

import './level_buttons/level_buttons_widget.dart';
import '../../../../../core/core.dart';
import '../../../../domain/entities/available_levels.dart';
import '../../../../domain/entities/quiz.dart';
import 'quiz_card/quiz_card_widget.dart';

class BodyWidget extends StatelessWidget {
  final List<Quiz> quizzes;

  const BodyWidget({Key? key, required this.quizzes}) : super(key: key);

  List<Widget> get quizWidgetsList {
    return quizzes.map(quizObjectToCardWidget).toList();
  }

  QuizCardWidget quizObjectToCardWidget(Quiz quiz) {
    return QuizCardWidget(quiz: quiz);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          BodyLevelButtonsWidget(),
          Expanded(
            child: LayoutBuilder(
              builder: (context, contraints) {
                return GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: (contraints.maxWidth / 2 - 56) / 150,
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 24),
                  children: quizWidgetsList,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BodyLevelButtonsWidget extends StatelessWidget {
  const BodyLevelButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: LevelButtonsWidget(availableLevels: availableLevels),
    );
  }
}
