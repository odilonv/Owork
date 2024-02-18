import 'package:flutter/material.dart';
import 'package:project/src/utils/constants/strings.dart';

import '../../utils/constants/nums.dart';
import '../../utils/time_utils.dart';

class PomodoroRectangleWidget extends StatelessWidget {
  final String? title;
  final bool workAndPauseDurationVisible, handler;
  final int totalTime, workingTime, breakTime;

  const PomodoroRectangleWidget(
      {Key? key,
      this.title,
      this.handler = false,
      this.totalTime = 70,
      this.workingTime = 50,
      this.breakTime = 10,
      this.workAndPauseDurationVisible = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(children: <Widget>[
        if (title != null) ...[
          Text(
            title!.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11.0,
            ),
          ),
        ],
        if (workAndPauseDurationVisible) ...[
          const SizedBox(height: largeSpace)
        ] else if (title != null && handler) ...[
          const SizedBox(height: smallSpace)
        ],
        Text(
          handler
              ? '${totalDuration.toUpperCase()} : ${convertMinutesToHoursAndMinutes(totalTime)}'
              : convertMinutesToHoursAndMinutes(totalTime),
          style: const TextStyle(
              color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        if (handler && workAndPauseDurationVisible) ...[
          const SizedBox(height: smallSpace),
        ],
        if (workAndPauseDurationVisible) ...[
          Text(
            '${work.toUpperCase()} : $workingTime${diminutiveMinutes.toUpperCase()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: smallSpace),
          Text(
            '${pause.toUpperCase()} : $breakTime${diminutiveMinutes.toUpperCase()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          )
        ],
      ]),
    );
  }
}
