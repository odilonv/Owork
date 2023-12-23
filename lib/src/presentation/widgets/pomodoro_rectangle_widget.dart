import 'package:flutter/material.dart';
import 'package:project/src/utils/constants/strings.dart';

import '../../utils/constants/nums.dart';

class PomodoroRectangleWidget extends StatelessWidget {
  final String? title, firstLine;
  final bool workAndPauseDurationVisible;

  const PomodoroRectangleWidget(
      {Key? key,
      this.title,
      this.firstLine,
      this.workAndPauseDurationVisible = true})
      : super(key: key);

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
        ] else if (title != null && firstLine != null) ...[
          const SizedBox(height: smallSpace)
        ],
        if (firstLine != null) ...[
          Text(
            firstLine!.toUpperCase(),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          if (firstLine != null && workAndPauseDurationVisible) ...[
            const SizedBox(height: smallSpace),
          ],
          if (workAndPauseDurationVisible) ...[
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
            )
          ],
        ],
      ]),
    );
  }
}
