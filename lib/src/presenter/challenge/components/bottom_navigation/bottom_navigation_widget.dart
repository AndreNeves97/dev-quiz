import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/src/presenter/challenge/components/action_button/action_button_widget.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: ActionButtonWidget.white(
            label: 'Pular',
            onTap: () {},
          )),
          SizedBox(width: 7),
          Expanded(
              child: ActionButtonWidget.green(
            label: 'Confirmar',
            onTap: () {},
          )),
        ],
      ),
    );
  }
}
