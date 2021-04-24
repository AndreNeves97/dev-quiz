import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import 'score_card/score_card_widget.dart';
import 'user_info/user_info_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(264),
          child: AppBarContainerWidget(),
        );
}

class AppBarContainerWidget extends StatelessWidget {
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
            child: UserInfoWidget(),
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
