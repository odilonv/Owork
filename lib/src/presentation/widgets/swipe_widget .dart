import 'package:flutter/material.dart';

class SwipeWidget extends StatelessWidget {
  final String? swipeUpText, swipeDownText;
  final VoidCallback onSwipe;
  final IconData? icon;
  final Color? color;
  final double? iconSize;

  const SwipeWidget(
      {Key? key,
      this.swipeUpText,
      this.swipeDownText,
      this.color,
      this.iconSize,
      required this.onSwipe,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          onSwipe();
        },
        onVerticalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! < 0) {
            onSwipe();
          }
        },
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              if (swipeUpText != null)
                Text(
                  swipeUpText!,
                  style: TextStyle(
                    color: color ?? Theme.of(context).primaryColor,
                    fontSize: 11.5,
                  ),
                ),
              Icon(
                icon,
                color: color ?? Theme.of(context).primaryColor,
                size: iconSize ?? 30.0,
              ),
              if (swipeDownText != null)
                Text(
                  swipeDownText!,
                  style: TextStyle(
                    color: color ?? Theme.of(context).primaryColor,
                    fontSize: 11.5,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
