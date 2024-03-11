// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  final String? title;

  const TextfieldWidget({Key? key, this.title}) : super(key: key);

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  final FocusNode _focusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      height: 70,
      child: TextField(
        focusNode: _focusNode,
        decoration: InputDecoration(
          labelText: widget.title,
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
          fillColor: _hasFocus
              ? Colors.white.withOpacity(0.1)
              : Colors.white.withOpacity(0.2),
          filled: true,
        ),
      ),
    );
  }
}
