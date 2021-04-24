import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';
import '../../../../../domain/entities/user.dart';

class UserInfoWidget extends StatelessWidget {
  final User user;

  const UserInfoWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserWelcomeWidget(user: user),
            UserImageWidget(user: user),
          ],
        ),
      ),
    );
  }
}

class UserWelcomeWidget extends StatelessWidget {
  final User user;

  const UserWelcomeWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Olá, ',
        style: AppTextStyles.title,
        children: [
          TextSpan(text: user.name, style: AppTextStyles.titleBold),
        ],
      ),
    );
  }
}

class UserImageWidget extends StatelessWidget {
  final User user;

  const UserImageWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: AppColors.darkPurple),
        image: DecorationImage(
          image: AssetImage(AppImages.user),
        ),
      ),
    );
  }
}
