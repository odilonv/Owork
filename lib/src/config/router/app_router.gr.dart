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
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeView(
          key: args.key,
          totalTime: args.totalTime,
          workingTime: args.workingTime,
          breakTime: args.breakTime,
        ),
      );
    },
    PomodoroRoute.name: (routeData) {
      final args = routeData.argsAs<PomodoroRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PomodoroView(
          key: args.key,
          totalTime: args.totalTime,
          workingTime: args.workingTime,
          breakTime: args.breakTime,
        ),
      );
    },
    WorkRoute.name: (routeData) {
      final args = routeData.argsAs<WorkRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WorkView(
          key: args.key,
          totalTime: args.totalTime,
          workingTime: args.workingTime,
          breakTime: args.breakTime,
        ),
      );
    },
  };
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    int totalTime = 70,
    int workingTime = 50,
    int breakTime = 10,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            totalTime: totalTime,
            workingTime: workingTime,
            breakTime: breakTime,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.totalTime = 70,
    this.workingTime = 50,
    this.breakTime = 10,
  });

  final Key? key;

  final int totalTime;

  final int workingTime;

  final int breakTime;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, totalTime: $totalTime, workingTime: $workingTime, breakTime: $breakTime}';
  }
}

/// generated route for
/// [PomodoroView]
class PomodoroRoute extends PageRouteInfo<PomodoroRouteArgs> {
  PomodoroRoute({
    Key? key,
    required int totalTime,
    required int workingTime,
    required int breakTime,
    List<PageRouteInfo>? children,
  }) : super(
          PomodoroRoute.name,
          args: PomodoroRouteArgs(
            key: key,
            totalTime: totalTime,
            workingTime: workingTime,
            breakTime: breakTime,
          ),
          initialChildren: children,
        );

  static const String name = 'PomodoroRoute';

  static const PageInfo<PomodoroRouteArgs> page =
      PageInfo<PomodoroRouteArgs>(name);
}

class PomodoroRouteArgs {
  const PomodoroRouteArgs({
    this.key,
    required this.totalTime,
    required this.workingTime,
    required this.breakTime,
  });

  final Key? key;

  final int totalTime;

  final int workingTime;

  final int breakTime;

  @override
  String toString() {
    return 'PomodoroRouteArgs{key: $key, totalTime: $totalTime, workingTime: $workingTime, breakTime: $breakTime}';
  }
}

/// generated route for
/// [WorkView]
class WorkRoute extends PageRouteInfo<WorkRouteArgs> {
  WorkRoute({
    Key? key,
    required int totalTime,
    required int workingTime,
    required int breakTime,
    List<PageRouteInfo>? children,
  }) : super(
          WorkRoute.name,
          args: WorkRouteArgs(
            key: key,
            totalTime: totalTime,
            workingTime: workingTime,
            breakTime: breakTime,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkRoute';

  static const PageInfo<WorkRouteArgs> page = PageInfo<WorkRouteArgs>(name);
}

class WorkRouteArgs {
  const WorkRouteArgs({
    this.key,
    required this.totalTime,
    required this.workingTime,
    required this.breakTime,
  });

  final Key? key;

  final int totalTime;

  final int workingTime;

  final int breakTime;

  @override
  String toString() {
    return 'WorkRouteArgs{key: $key, totalTime: $totalTime, workingTime: $workingTime, breakTime: $breakTime}';
  }
}
