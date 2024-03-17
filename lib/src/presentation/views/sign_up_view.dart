// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project/src/config/router/app_router.dart';
import 'package:project/src/presentation/widgets/circle_logo_widget.dart';
import 'package:project/src/presentation/widgets/footer_widget.dart';
import 'package:project/src/presentation/widgets/textfields/password_textfield_widget.dart';
import 'package:project/src/presentation/widgets/textfields/email_textfield_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../utils/constants/strings.dart';
import '../../utils/text_utils.dart';
import '../widgets/large_button_widget.dart';
import '../widgets/text_separator_widget.dart';
import '../widgets/textfields/basic_textfield_widget.dart';

@RoutePage()
class SignUpView extends HookWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(appTitle, style: Theme.of(context).textTheme.titleSmall),
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
                    'Vous aussi, \ndevenez une personne productive :',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                SizedBox(height: largeSpace),
                BasicTextfieldWidget(title: capitalize(username)),
                SizedBox(height: largeSpace),
                BasicTextfieldWidget(title: capitalize('nom')),
                SizedBox(height: largeSpace),
                BasicTextfieldWidget(title: capitalize('prénom')),
                SizedBox(height: largeSpace),
                EmailTextfieldWidget(title: capitalize('mail')),
                SizedBox(height: largeSpace),
                PasswordTextfieldWidget(title: capitalize(password)),
                SizedBox(height: largeSpace),
                LargeButtonWidget(
                  text: capitalize(signUp),
                  onPressed: () {},
                ),
                TextSeparatorWidget(text: or.toUpperCase(), space: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      capitalize("s'inscrire avec"),
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
            text: '${capitalize(alreadyHaveAnAccount)} ',
            boldText: '${capitalize(signInFooter)}.',
            onPressed: () => appRouter.push(SignInRoute()),
          )
        ],
      ),
    );
  }
}
