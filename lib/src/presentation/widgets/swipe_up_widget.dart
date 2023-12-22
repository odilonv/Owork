import 'package:flutter/material.dart';

import '../../utils/constants/nums.dart';

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
        const SizedBox(height: mediumSpace),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.15),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Center(
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}
