// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project/src/presentation/widgets/bottom_button_widget.dart';
import 'package:project/src/presentation/widgets/pomodoro_rectangle_widget.dart';
import 'package:project/src/presentation/widgets/timer_not_started_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../config/router/app_router.dart';
import '../../utils/constants/strings.dart';

@RoutePage()
class WorkView extends HookWidget {
  const WorkView({super.key});

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
            PomodoroRectangleWidget(
                title: totalDuration,
                firstLine: "1H10",
                workAndPauseDurationVisible: false),
            Spacer(),
            TimerNotStartedWidget(
              firstLine: "${i.toUpperCase()} ME",
              secondLine: "${focus.toUpperCase()}.",
              onTap: () => appRouter.push(WorkRoute()),
            ),
            Spacer(),
            BottomButtonWidget(
              bottomButtonText: pause.toUpperCase(),
              iconButton: Icons.pause_rounded,
            ),
            SizedBox(height: topAndBottomMargin),
          ],
        ),
      ),
    );
  }
}
