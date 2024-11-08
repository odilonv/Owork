import 'package:flutter/material.dart';

class SnackBarCustom {
  final String message;

  SnackBarCustom({required this.message});

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  SnackBar getSnackBar(BuildContext context) {
    return SnackBar(
      backgroundColor: Theme.of(context).primaryColor,
      content: Text(
        message,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      shape: const RoundedRectangleBorder(
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
