import 'package:flutter/material.dart';

import '../../utils/constants/nums.dart';

class BottomButtonWidget extends StatelessWidget {
  final String? bottomButtonText;
  final IconData? iconButton;
  final VoidCallback onPressed;

  const BottomButtonWidget(
      {Key? key,
      this.bottomButtonText,
      required this.iconButton,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.15),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (bottomButtonText != null) ...[
                  Text(
                    bottomButtonText!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(width: mediumSpace)
                ],
                Icon(
                  iconButton,
                  color: Colors.white,
                  size: 20.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
