// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project/src/presentation/widgets/demi_fake_timer_widget.dart';
import 'package:project/src/presentation/widgets/pomodoro_setter_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../config/router/app_router.dart';
import '../../utils/constants/strings.dart';

@RoutePage()
class PomodoroView extends HookWidget {
  final int totalTime, workingTime, breakTime;

  const PomodoroView(
      {Key? key,
      required this.totalTime,
      required this.workingTime,
      required this.breakTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              totalTime: totalTime,
              breakTime: breakTime,
              workingTime: workingTime,
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
