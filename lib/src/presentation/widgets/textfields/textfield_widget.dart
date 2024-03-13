import 'package:flutter/material.dart';

abstract class TextfieldWidget extends StatefulWidget {
  final String? title;

  const TextfieldWidget({Key? key, this.title}) : super(key: key);

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();

  Widget buildTextField(
      BuildContext context, FocusNode focusNode, bool hasFocus);
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
      child: widget.buildTextField(context, _focusNode, _hasFocus),
    );
  }
}
