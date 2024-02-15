// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project/src/presentation/widgets/bottom_button_widget.dart';
import 'package:project/src/presentation/widgets/pomodoro_rectangle_widget.dart';
import 'package:project/src/presentation/widgets/timer_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../config/router/app_router.dart';
import '../../utils/constants/strings.dart';

@RoutePage()
class WorkView extends StatefulWidget {
  const WorkView({super.key});

  @override
  WorkViewState createState() => WorkViewState();
}

class WorkViewState extends State<WorkView> {
  int _remainingTime = 10; //initial time in seconds
  late Timer _timer;
  bool paused = false;

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
            SizedBox(height: topAndBottomMargin),
            PomodoroRectangleWidget(
                title: '${totalDurationRemaining.toUpperCase()} :',
                workAndPauseDurationVisible: false),
            Spacer(),
            Text(
              paused ? '${focusing.toUpperCase()}.' : '${pause.toUpperCase()}.',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            TimerWidget(
              firstLine: "${remainingTime.toUpperCase()} :",
              secondLine: "$_remainingTime SEC.",
              onTap: () => appRouter.push(WorkRoute()),
            ),
            Spacer(),
            BottomButtonWidget(
              bottomButtonText:
                  paused ? pause.toUpperCase() : resume.toUpperCase(),
              iconButton:
                  paused ? Icons.pause_rounded : Icons.play_arrow_rounded,
              onPressed: _pauseState,
            ),
            SizedBox(height: topAndBottomMargin),
          ],
        ),
      ),
    );
  }

  void _pauseState() {
    setState(() {
      paused = !paused;
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  void dispose() {
    if (_timer != null && _timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }
}
