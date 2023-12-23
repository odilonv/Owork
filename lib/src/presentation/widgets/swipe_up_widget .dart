import 'package:flutter/material.dart';

class SwipeUpWidget extends StatelessWidget {
  final String swipeUpText;

  const SwipeUpWidget({Key? key, required this.swipeUpText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          swipeUpText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11.5,
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white,
          size: 30.0,
        ),
      ],
    );
  }
}
