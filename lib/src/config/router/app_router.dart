import 'package:auto_route/auto_route.dart';

import '../../presentation/views/home_view.dart';
import '../../presentation/views/work_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: WorkRoute.page),
      ];
}

final appRouter = AppRouter();
