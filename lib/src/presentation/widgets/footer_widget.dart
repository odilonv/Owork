// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/constants/nums.dart';

class FooterWidget extends StatelessWidget {
  final String? text, boldText;
  final VoidCallback? onPressed;
  final Color? color;

  const FooterWidget(
      {Key? key, this.text, this.boldText, this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(color: Theme.of(context).primaryColor),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: text,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      color: color ?? Theme.of(context).primaryColor),
                ),
                WidgetSpan(
                  child: InkWell(
                    onTap: onPressed,
                    child: Text(
                      boldText ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              color ?? Theme.of(context).primaryColor,
                          fontSize: 14.0,
                          fontFamily: 'Montserrat',
                          color: color ?? Theme.of(context).primaryColor),
                    ),
                  ),
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
