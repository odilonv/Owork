import 'package:flutter/material.dart';

import 'src/config/themes/app_theme.dart';
import 'src/config/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Owork',
      theme: AppTheme.light,
      routerConfig: _appRouter.config(),
    );
  }
}
