// ignore_for_file: prefer_function_declarations_over_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hourLastProvider = StateProvider<String>((ref) => "00");
final minLastProvider = StateProvider<String>((ref) => "00");

class TimeInputByTextFieldWidget extends HookConsumerWidget {
  final bool displayHours;
  final TextEditingController controller;
  final int initialValue;

  TimeInputByTextFieldWidget(
      {Key? key,
      this.displayHours = true,
      required this.controller,
      this.initialValue = 00})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focus = useFocusNode();
    TextEditingController controllerHours = TextEditingController();

    useEffect(() {
      if (displayHours && initialValue > 59) {
        int hours = initialValue ~/ 60;
        int minutes = initialValue % 60;

        controller.text = minutes.toString();
      } else {
        controller.text = initialValue.toString();
      }
      final listener = () {
        formatTime(
          context,
          ref,
          lastProvider: hourLastProvider,
          controller: controller,
          nextFocus: focus,
        );
        if (controller.text.length == 2) {
          FocusScope.of(context).requestFocus(focus);
        }
      };

      controller.addListener(listener);

      return () {
        controller.removeListener(listener);
      };
    });

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (displayHours) ...[
            SizedBox(
              width: 100,
              child: generateTextField(controller, focus, label: "HH"),
            ),
            Text(":",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ],
          SizedBox(
            width: 100,
            child: generateTextField(controller, focus, label: "MM"),
          ),
        ],
      ),
    );
  }

  Widget generateTextField(
    TextEditingController controller,
    FocusNode focusNode, {
    required String label,
  }) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelText: label,
        labelStyle: TextStyle(color: Colors.white), // Add this line
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.white),
        ),
      ),
      focusNode: focusNode,
      showCursor: false,
      onTap: () => controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      ),
      onSubmitted: (value) => paddingZero(controller),
      onTapOutside: (event) => paddingZero(controller),
      textInputAction: TextInputAction.next,
      maxLength: 2,
      buildCounter: (context,
              {required currentLength, required isFocused, maxLength}) =>
          null,
    );
  }

  void formatTime(
    BuildContext context,
    WidgetRef ref, {
    required StateProvider<String> lastProvider,
    required TextEditingController controller,
    FocusNode? nextFocus,
    hasLimit = false,
  }) {
    if (ref.read(lastProvider.notifier).state == controller.text) {
      return;
    }
    ref.read(lastProvider.notifier).state = controller.text;
    if (controller.text.length == 2) {
      controller.text = controller.text[2];
      controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length));
      return;
    }

    final num = int.parse(controller.text);

    if (controller.text.length == 2) {
      focusOrUnfocus(context, nextFocus);
      return;
    }

    if (controller.text.length == 1 && hasLimit && num > 5) {
      controller.text = controller.text.padLeft(2, "0");
      focusOrUnfocus(context, nextFocus);
    }
  }

  void focusOrUnfocus(BuildContext context, FocusNode? focus) {
    if (focus != null) {
      FocusScope.of(context).requestFocus(focus);
    } else {
      FocusScope.of(context).unfocus();
    }
  }

  void paddingZero(TextEditingController controller) {
    if (controller.text.length == 1) {
      controller.text = controller.text.padLeft(2, "0");
    }
  }
}
