// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/src/presentation/widgets/bottom_button_widget.dart';
import 'package:project/src/utils/constants/strings.dart';

import '../../utils/constants/nums.dart';
import 'time_input_by_textfield_widget.dart';

class PomodoroSetterWidget extends StatelessWidget {
  final String? title;
  final Function(int totalTime, int workingTime, int breakTime) onSave;
  final TextEditingController totalTimeController = TextEditingController();
  final TextEditingController workingTimeController = TextEditingController();
  final TextEditingController breakTimeController = TextEditingController();

  PomodoroSetterWidget({Key? key, this.title, required this.onSave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: 300,
      height: 450,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (title != null)
              Center(
                child: Text(
                  title!.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11.0,
                  ),
                ),
              ),
            Spacer(),
            Text(
              'Durée totale :',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: mediumSpace),
            TimeInputByTextFieldWidget(controller: totalTimeController),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '      Travail',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ':',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                TimeInputByTextFieldWidget(
                    controller: workingTimeController, displayHours: false),
              ],
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '      Pause',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ':',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                TimeInputByTextFieldWidget(
                    controller: breakTimeController, displayHours: false),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    int totalTime = int.parse(totalTimeController.text);
                    int workingTime = int.parse(workingTimeController.text);
                    int breakTime = int.parse(breakTimeController.text);
                    onSave(totalTime, workingTime, breakTime);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.15),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Sauvegarder",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: mediumSpace),
          ]),
    );
  }
}
