import 'package:flutter/material.dart';
import 'package:project/src/utils/constants/strings.dart';

import '../../utils/constants/nums.dart';

class PomodoroRectangleWidget extends StatelessWidget {
  const PomodoroRectangleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          Text(
            pomodoro.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11.0,
            ),
          ),
          const SizedBox(height: largeSpace),
          Text(
            defaultTotalDuration.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: smallSpace),
          Text(
            defaultWorkingTime.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: smallSpace),
          Text(
            defaultBreakTime.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
