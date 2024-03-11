// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/src/presentation/widgets/circle_logo_widget.dart';
import 'package:project/src/presentation/widgets/footer_widget.dart';
import 'package:project/src/presentation/widgets/textfield_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../utils/constants/strings.dart';
import '../../utils/text_utils.dart';
import '../widgets/large_button_widget.dart';
import '../widgets/text_separator_widget.dart';

@RoutePage()
class ConnectView extends HookWidget {
  const ConnectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 180.0,
        title: Center(
          child: Text(appTitle, style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Vous souhaitez être plus productif ?\nAlors connectez-vous.',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                TextfieldWidget(title: capitalize(username)),
                TextfieldWidget(title: capitalize(password)),
                GestureDetector(
                  onTap: () {
                    // TO DO
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Mot de passe oublié ?',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 1.0),
                          height: 1.0,
                          width: 123,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: largeSpace),
                LargeButtonWidget(
                  text: 'Connexion',
                  onPressed: () {},
                ),
                TextSeparatorWidget(text: "OU"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Continuez avec",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(width: largeSpace),
                    CircleLogoWidget(
                        image: 'assets/google_logo.svg', onPressed: () => {}),
                    SizedBox(width: largeSpace),
                    CircleLogoWidget(
                        image: 'assets/apple_logo.svg', onPressed: () => {}),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          FooterWidget(
            text: 'Vous n’avez pas de compte ? ',
            boldText: 'Inscrivez-vous.',
          )
        ],
      ),
    );
  }
}
