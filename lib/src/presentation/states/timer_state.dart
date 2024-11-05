import 'dart:async';

import 'package:flutter/material.dart';

class TimerState with ChangeNotifier {
  Timer? _timer;
  int _remainingTime;
  bool _paused;
  final int _breakingTime;
  final int _initialWorkingTime;
  int _totalDuration;
  bool _isWorking;

  TimerState(
      {required int workingTime,
      required int breakingTime,
      required int totalDuration})
      : _remainingTime = workingTime * 60,
        _paused = false,
        _breakingTime = breakingTime * 60,
        _initialWorkingTime = workingTime * 60,
        _totalDuration = totalDuration * 60,
        _isWorking = true;

  int get remainingTime => _remainingTime;
  bool get paused => _paused;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0 && _totalDuration > 0) {
        _remainingTime--;
        decrementTotalDuration();
        notifyListeners();
      } else {
        _timer!.cancel();
        _isWorking = !_isWorking;
        _remainingTime = _isWorking ? _initialWorkingTime : _breakingTime;
        if (_totalDuration > 0) {
          startTimer();
        }
      }
    });
  }

  void activateBreakTime() {
    _timer?.cancel();
    _remainingTime = _breakingTime;
    _isWorking = false;
    startTimer();
  }

  void pauseState() {
    _paused = !_paused;
    if (_paused) {
      _timer?.cancel();
    } else {
      startTimer();
    }
    notifyListeners();
  }

  void decrementTotalDuration() {
    if (_totalDuration > 0) {
      _totalDuration--;
    } else {
      _timer?.cancel();
    }
  }
}
