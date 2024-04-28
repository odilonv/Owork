import 'package:flutter/material.dart';

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
          icon: Icon(
            Icons.move_up_rounded,
            color: Theme.of(context).primaryColor,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              topText.toUpperCase(),
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bottomText.toUpperCase(),
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 9.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
