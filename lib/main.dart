import 'package:flutter/material.dart';

import 'src/utils/constants/strings.dart';
import 'src/config/themes/app_theme.dart';
import 'src/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appTitle,
      theme: AppTheme.light,
      routerConfig: appRouter.config(),
    );
  }
}
