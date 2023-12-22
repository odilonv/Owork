part of 'local_timers_cubit.dart';

abstract class LocalTimersState extends Equatable {
  final List<Timer> timers;

  const LocalTimersState({
    this.timers = const [],
  });

  @override
  List<Object> get props => [timers];
}

class LocalTimersLoading extends LocalTimersState {
  const LocalTimersLoading();
}

class LocalTimersSuccess extends LocalTimersState {
  const LocalTimersSuccess({super.timers});
}
