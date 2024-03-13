import 'package:flutter/material.dart';

class PasswordTextfieldWidget extends StatefulWidget {
  final String? title;

  PasswordTextfieldWidget({Key? key, this.title}) : super(key: key);

  @override
  _PasswordTextfieldWidgetState createState() =>
      _PasswordTextfieldWidgetState();
}

class _PasswordTextfieldWidgetState extends State<PasswordTextfieldWidget> {
  String? _password;
  bool _obscureText = true;

  String? _validatePassword(String? value) {
    Pattern pattern = r'^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{8,}$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!))
      return 'Le mot de passe doit contenir au moins une majuscule, un caractère spécial, un chiffre et doit avoir au moins 8 caractères';
    else
      return null;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
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
        fillColor: Colors.white.withOpacity(0.15),
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
      validator: _validatePassword,
      onSaved: (value) {
        _password = value;
      },
    );
  }
}
