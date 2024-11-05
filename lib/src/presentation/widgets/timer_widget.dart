import 'package:flutter/material.dart';

import '../../utils/timer_circle_painter_utils.dart';

class TimerWidget extends StatelessWidget {
  final String firstLine, secondLine;
  final VoidCallback onTap;
  final ValueNotifier<double> timerPercentage;

  const TimerWidget({
    Key? key,
    required this.firstLine,
    required this.secondLine,
    required this.onTap,
    required this.timerPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 320.0,
      height: 320.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 1.0,
        ),
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Add the ValueListenableBuilder here
            ValueListenableBuilder<double>(
              valueListenable: timerPercentage,
              builder: (context, value, child) {
                return CustomPaint(
                  painter: TimerCirclePainter(
                      percentage: value, color: Theme.of(context).primaryColor),
                  child: const SizedBox(
                    width: 320.0,
                    height: 320.0,
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                  width: 280.0,
                  height: 280.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 255, 255, 0.20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          firstLine,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          secondLine,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 26.0,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
