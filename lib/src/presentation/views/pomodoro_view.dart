// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project/src/presentation/widgets/demi_fake_timer_widget.dart';
import 'package:project/src/presentation/widgets/pomodoro_setter_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../config/router/app_router.dart';
import '../../utils/constants/strings.dart';
import '../widgets/timer_not_started_widget.dart';

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
      resizeToAvoidBottomInset: false,
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
              onSave: (totalTime, workingTime, breakTime) {
                appRouter.push(HomeRoute(
                  totalTime: totalTime,
                  workingTime: workingTime,
                  breakTime: breakTime,
                ));
              },
            ),
            Spacer(),
            DemiFakeTimerWidget(
              firstLine: "${i.toUpperCase()} ME",
              secondLine: "${focus.toUpperCase()}.",
            ),
          ],
        ),
      ),
    );
  }
}
