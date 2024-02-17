// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project/src/presentation/widgets/pomodoro_setter_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../utils/constants/strings.dart';
import '../widgets/swipe_up_widget .dart';

@RoutePage()
class PomodoroView extends StatefulWidget {
  const PomodoroView({super.key});

  @override
  PomodoroViewState createState() => PomodoroViewState();
}

class PomodoroViewState extends State<PomodoroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(appTitle, style: Theme.of(context).textTheme.titleSmall),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: topAndBottomMargin),
            PomodoroSetterWidget(
              title: pomodoro,
            ),
            SizedBox(height: topAndBottomMargin),
          ],
        ),
      ),
    );
  }
}
