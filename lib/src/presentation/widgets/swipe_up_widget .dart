import 'package:flutter/material.dart';

class SwipeUpWidget extends StatelessWidget {
  final String swipeUpText;
  final VoidCallback onSwipe;

  const SwipeUpWidget(
      {Key? key, required this.swipeUpText, required this.onSwipe})
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
          ),
        ),
      ),
    );
  }
}
