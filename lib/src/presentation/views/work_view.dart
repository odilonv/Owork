// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project/src/presentation/widgets/bottom_button_widget.dart';
import 'package:project/src/presentation/widgets/timer_widget.dart';
import 'package:project/src/utils/constants/nums.dart';
import '../../utils/constants/strings.dart';
import 'package:provider/provider.dart';

import '../states/timer_state.dart';

@RoutePage()
class WorkView extends HookWidget {
  final int totalTime, workingTime, breakTime;

  const WorkView(
      {Key? key,
      required this.totalTime,
      required this.workingTime,
      required this.breakTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timerState = TimerState(workingTime: workingTime);

    useEffect(() {
      timerState.startTimer();
      return timerState.pauseState;
    }, const []);

    return ChangeNotifierProvider<TimerState>.value(
      value: timerState,
      child: Consumer<TimerState>(
        builder: (context, timerState, child) {
          int minutes = timerState.remainingTime ~/ 60;
          int seconds = timerState.remainingTime % 60;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              //automaticallyImplyLeading: false,
              title: Center(
                child: Text(appTitle,
                    style: Theme.of(context).textTheme.titleSmall),
              ),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: topAndBottomMargin),
                  // SizedBox(height: topAndBottomMargin),
                  // PomodoroRectangleWidget(
                  //     title: '${totalDuration.toUpperCase()} :',
                  //     totalTime: totalTime,
                  //     workAndPauseDurationVisible: false),
                  Spacer(),
                  Text(
                    timerState.paused
                        ? '${pause.toUpperCase()}.'
                        : '${focusing.toUpperCase()}.',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 11.5,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  TimerWidget(
                      firstLine: "${remainingTime.toUpperCase()} :",
                      secondLine: "$minutes MIN $seconds SEC.",
                      onTap: () {},
                      timerPercentage: ValueNotifier<double>(
                        timerState.remainingTime.toDouble(),
                      )),
                  Spacer(),
                  BottomButtonWidget(
                    bottomButtonText: timerState.paused
                        ? resume.toUpperCase()
                        : pause.toUpperCase(),
                    iconButton: timerState.paused
                        ? Icons.play_arrow_rounded
                        : Icons.pause_rounded,
                    onPressed: timerState.pauseState,
                  ),
                  SizedBox(height: topAndBottomMargin),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
