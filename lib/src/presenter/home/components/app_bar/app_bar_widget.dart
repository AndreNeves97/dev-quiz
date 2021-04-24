import 'package:dev_quiz/src/domain/entities/user.dart';
import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import 'score_card/score_card_widget.dart';
import 'user_info/user_info_widget.dart';

class AppBarWidget extends PreferredSize {
  final User user;

  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(264),
          child: AppBarContainerWidget(user: user),
        );
}

class AppBarContainerWidget extends StatelessWidget {
  final User user;

  AppBarContainerWidget({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264,
      color: AppColors.background,
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: UserInfoWidget(user: user),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ScoreCardWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
