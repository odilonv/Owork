import 'package:flutter/material.dart';

import '../../utils/constants/nums.dart';

class SwitchModeWidget extends StatelessWidget {
  final String topText, bottomText;

  const SwitchModeWidget(
      {Key? key, required this.topText, required this.bottomText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.move_up_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              topText.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: largeSpace,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bottomText.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
