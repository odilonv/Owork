import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import '../../presentation/views/home_view.dart';
import '../../presentation/views/work_view.dart';
import '../../presentation/views/pomodoro_view.dart';
import '../../presentation/views/sign_in_view.dart';
import '../../presentation/views/sign_up_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: WorkRoute.page),
        AutoRoute(page: PomodoroRoute.page),
        CustomRoute(
          page: SignInRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        AutoRoute(page: SignUpRoute.page),
      ];
}

final appRouter = AppRouter();
