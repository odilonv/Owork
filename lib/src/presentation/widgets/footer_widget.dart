// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/constants/nums.dart';

class FooterWidget extends StatelessWidget {
  final String? text, boldText, onPressed;
  final Color? color;

  const FooterWidget(
      {Key? key, this.text, this.boldText, this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(color: Colors.white),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: text,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      color: color ?? Colors.white),
                ),
                TextSpan(
                  text: boldText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      color: color ?? Colors.white),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: largeSpace),
      ],
    );
  }
}
