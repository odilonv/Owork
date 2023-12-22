import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/models/timer.dart';
import '../../domain/repositories/database_repository.dart';

part 'local_timers_state.dart';

class LocalTimersCubit extends Cubit<LocalTimersState> {
  final DatabaseRepository _databaseRepository;

  LocalTimersCubit(this._databaseRepository)
      : super(const LocalTimersLoading());

  Future<void> getAllSavedTimers() async {
    emit(await _getAllSavedTimers());
  }

  Future<void> removeTimer({required Timer timer}) async {
    await _databaseRepository.removeTimer(timer);
    emit(await _getAllSavedTimers());
  }

  Future<void> saveTimer({required Timer timer}) async {
    await _databaseRepository.saveTimer(timer);
    emit(await _getAllSavedTimers());
  }

  Future<LocalTimersState> _getAllSavedTimers() async {
    final timers = await _databaseRepository.getSavedTimers();
    return LocalTimersSuccess(timers: timers);
  }
}
