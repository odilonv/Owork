import 'package:flutter/material.dart';

import '../../../utils/snackBar_custom.dart';

class PasswordTextfieldWidget extends StatefulWidget {
  final String? title;

  const PasswordTextfieldWidget({Key? key, this.title}) : super(key: key);

  @override
  _PasswordTextfieldWidgetState createState() =>
      _PasswordTextfieldWidgetState();
}

class _PasswordTextfieldWidgetState extends State<PasswordTextfieldWidget> {
  final TextEditingController _controller = TextEditingController();

  String? _password;
  bool _obscureText = true;
  bool _isValid = true;

  bool _validatePassword(String? value) {
    Pattern pattern = r'^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8,}$';
    RegExp regex = RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) {
      return false;
    } else {
      return true;
    }
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 12.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        fillColor: Theme.of(context).primaryColor.withOpacity(0.15),
        filled: true,
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min, // This is important
          children: <Widget>[
            !_isValid
                ? IconButton(
                    icon: Icon(Icons.warning_rounded,
                        color: Theme.of(context).primaryColor),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBarCustom(
                              message:
                                  'Le mot de passe doit contenir :\n- au moins 8 caractères\n- une lettre majuscule\n- une lettre minuscule\n- un chiffre\n- un caractère spécial')
                          .getSnackBar(context));
                    },
                  )
                : Container(),
            IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: _togglePasswordVisibility,
            ),
          ],
        ),
      ),
      onChanged: (value) {
        setState(() {
          _isValid = _validatePassword(value);
        });
      },
      onFieldSubmitted: (value) {
        if (!_validatePassword(value)) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBarCustom(
                  message:
                      'Le mot de passe doit contenir :\n- au moins 8 caractères\n- une lettre majuscule\n- une lettre minuscule\n- un chiffre\n- un caractère spécial')
              .getSnackBar(context));
        }
      },
      onSaved: (value) {
        _password = value;
      },
    );
  }
}
