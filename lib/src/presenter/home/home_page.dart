import 'package:flutter/material.dart';

import 'components/app_bar/app_bar_widget.dart';
import 'components/body/body_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BodyWidget(),
    );
  }
}
