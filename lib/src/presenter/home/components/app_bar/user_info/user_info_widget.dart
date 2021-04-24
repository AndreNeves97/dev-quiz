import 'package:flutter/material.dart';

import '../../../../../../core/core.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    Key? key,
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
            UserWelcomeWidget(),
            UserImageWidget(),
          ],
        ),
      ),
    );
  }
}

class UserWelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Olá, ',
        style: AppTextStyles.title,
        children: [
          TextSpan(text: 'André', style: AppTextStyles.titleBold),
        ],
      ),
    );
  }
}

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({
    Key? key,
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
