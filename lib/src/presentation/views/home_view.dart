// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project/src/presentation/widgets/pomodoro_rectangle_widget.dart';
import 'package:project/src/presentation/widgets/switch_mode_widget.dart';
import 'package:project/src/presentation/widgets/timer_not_started_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../config/router/app_router.dart';
import '../../utils/constants/strings.dart';
import '../widgets/swipe_up_widget .dart';

@RoutePage()
class HomeView extends HookWidget {
  final int totalTime, workingTime, breakTime;

  const HomeView(
      {Key? key,
      this.totalTime = 70,
      this.workingTime = 50,
      this.breakTime = 10})
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
            PomodoroRectangleWidget(
              title: pomodoro,
              handler: true,
              totalTime: totalTime,
              workingTime: workingTime,
              breakTime: breakTime,
            ),
            SizedBox(height: mediumSpace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SwitchModeWidget(
                  topText: personalized,
                  bottomText: automatic,
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                  onPressed: () => appRouter.push(PomodoroRoute(
                    totalTime: totalTime,
                    workingTime: workingTime,
                    breakTime: breakTime,
                  )),
                ),
              ],
            ),
            Spacer(),
            TimerNotStartedWidget(
              firstLine: "${i.toUpperCase()} ME",
              secondLine: "${focus.toUpperCase()}.",
              onTap: () => appRouter.push(WorkRoute(
                totalTime: totalTime,
                workingTime: workingTime,
                breakTime: breakTime,
              )),
            ),
            Spacer(),
            SwipeUpWidget(swipeUpText: adaptYourProgram.toUpperCase()),
            SizedBox(height: topAndBottomMargin),
          ],
        ),
      ),
    );
  }
}
