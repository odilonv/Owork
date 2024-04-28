// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:project/src/presentation/widgets/circle_logo_widget.dart';
import 'package:project/src/presentation/widgets/footer_widget.dart';
import 'package:project/src/presentation/widgets/swipe_widget%20.dart';
import 'package:project/src/presentation/widgets/textfields/basic_textfield_widget.dart';
import 'package:project/src/presentation/widgets/textfields/password_textfield_widget.dart';
import 'package:project/src/utils/constants/nums.dart';

import '../../utils/constants/strings.dart';
import '../../utils/text_utils.dart';
import '../widgets/large_button_widget.dart';
import '../widgets/text_separator_widget.dart';
import '../../config/router/app_router.dart';

@RoutePage()
class SignInView extends HookWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 180.0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwipeWidget(
              icon: Icons.keyboard_arrow_down_rounded,
              onSwipe: () => appRouter.push(HomeRoute()),
            ),
            SizedBox(height: largeSpace),
            Text(appTitle, style: Theme.of(context).textTheme.titleMedium),
          ],
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
                    firstSentenceSignInView,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                SizedBox(height: largeSpace),
                BasicTextfieldWidget(title: capitalize(username)),
                SizedBox(height: largeSpace),
                PasswordTextfieldWidget(title: capitalize(password)),
                SizedBox(height: smallSpace),
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
                          capitalize(forgottenPassword),
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 1.0),
                          height: 1.0,
                          width: 123,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                LargeButtonWidget(
                  text: capitalize(signIn),
                  onPressed: () {},
                ),
                SizedBox(height: largeSpace),
                TextSeparatorWidget(space: 0, text: or.toUpperCase()),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                capitalize(continueWith),
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
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
          Spacer(),
          FooterWidget(
            text: '${capitalize(dontHaveAnAccount)} ',
            boldText: '${capitalize(signUpFooter)}.',
            onPressed: () => appRouter.push(SignUpRoute()),
          )
        ],
      ),
    );
  }
}
