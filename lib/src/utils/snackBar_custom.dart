import 'package:flutter/material.dart';

class SnackBarCustom {
  final String message;

  SnackBarCustom({required this.message});

  GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  SnackBar get snackBar {
    return SnackBar(
      backgroundColor: Colors.white,
      content: Text(
        message,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
      ),
      action: SnackBarAction(
        label: 'Fermer',
        textColor: Colors.black,
        onPressed: () {
          _scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
        },
      ),
    );
  }
}
