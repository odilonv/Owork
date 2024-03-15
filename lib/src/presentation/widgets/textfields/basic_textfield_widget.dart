// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicTextfieldWidget extends StatelessWidget {
  final String? title;
  BasicTextfieldWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        fillColor: Colors.white.withOpacity(0.15),
        filled: true,
      ),
    );
  }
}
