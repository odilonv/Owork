import 'package:flutter/material.dart';

class DemiFakeTimerWidget extends StatelessWidget {
  final String firstLine, secondLine;

  const DemiFakeTimerWidget(
      {Key? key, required this.firstLine, required this.secondLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300.0,
      height: 150.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(150),
          topRight: Radius.circular(150),
        ),
      ),
      child: Center(
        child: Container(
          width: 280.0,
          height: 140.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(150),
              topRight: Radius.circular(150),
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                firstLine,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20.0,
                ),
              ),
            ],
          )),
        ),
      ),
    ));
  }
}
