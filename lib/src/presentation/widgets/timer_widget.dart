import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final String firstLine, secondLine;
  final VoidCallback onTap;

  const TimerWidget(
      {Key? key,
      required this.firstLine,
      required this.secondLine,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 350.0,
      height: 350.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
      ),
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
              width: 280.0,
              height: 280.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 0.20),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      firstLine,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      secondLine,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              )),
        ),
      ),
    ));
  }
}
