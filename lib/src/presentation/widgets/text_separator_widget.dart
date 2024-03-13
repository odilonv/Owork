// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TextSeparatorWidget extends StatelessWidget {
  final String text;
  final double? space;

  const TextSeparatorWidget({Key? key, required this.text, this.space})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: space ?? 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 12.0),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
