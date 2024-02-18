// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    PomodoroRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PomodoroView(),
      );
    },
    WorkRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WorkView(),
      );
    },
  };
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute(
      {List<PageRouteInfo>? children,
      required int workingTime,
      required int totalTime,
      required int breakTime})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PomodoroView]
class PomodoroRoute extends PageRouteInfo<void> {
  const PomodoroRoute({List<PageRouteInfo>? children})
      : super(
          PomodoroRoute.name,
          initialChildren: children,
        );

  static const String name = 'PomodoroRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WorkView]
class WorkRoute extends PageRouteInfo<void> {
  const WorkRoute({List<PageRouteInfo>? children})
      : super(
          WorkRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
