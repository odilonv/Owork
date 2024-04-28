import 'package:flutter/material.dart';

import '../../utils/constants/nums.dart';

class BottomButtonWidget extends StatelessWidget {
  final String? bottomButtonText;
  final IconData? iconButton;
  final VoidCallback onPressed;

  const BottomButtonWidget(
      {Key? key,
      this.bottomButtonText,
      this.iconButton,
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
                if (bottomButtonText != null)
                  Text(
                    bottomButtonText!,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                if (bottomButtonText != null && iconButton != null)
                  const SizedBox(width: mediumSpace), // Added comma here
                if (iconButton != null)
                  Icon(
                    iconButton,
                    color: Theme.of(context).primaryColor,
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
