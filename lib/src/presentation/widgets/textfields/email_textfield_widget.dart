// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:project/src/utils/snackBar_custom.dart';

class EmailTextfieldWidget extends StatefulWidget {
  final String? title;
  const EmailTextfieldWidget({Key? key, this.title}) : super(key: key);

  @override
  _EmailTextfieldWidgetState createState() => _EmailTextfieldWidgetState();
}

class _EmailTextfieldWidgetState extends State<EmailTextfieldWidget> {
  final TextEditingController _controller = TextEditingController();
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
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
        fillColor: Theme.of(context).primaryColor.withOpacity(0.15),
        filled: true,
        suffixIcon: !_isValid
            ? IconButton(
                icon: Icon(Icons.warning_rounded,
                    color: Theme.of(context).primaryColor),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBarCustom(
                          message:
                              'Format d\'email valide : example@example.com')
                      .getSnackBar(context));
                },
              )
            : null,
      ),
      onChanged: (value) {
        setState(() {
          _isValid = EmailValidator.validate(value);
        });
      },
      onFieldSubmitted: (value) {
        if (!_isValid) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBarCustom(
                  message: 'Format d\'email valide : example@example.com')
              .getSnackBar(context));
        }
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}
