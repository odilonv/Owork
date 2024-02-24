import 'dart:async';

import 'package:flutter/material.dart';

class TimerState with ChangeNotifier {
  Timer? _timer;
  int _remainingTime;
  bool _paused;

  TimerState({required int workingTime})
      : _remainingTime = workingTime * 60,
        _paused = false;

  int get remainingTime => _remainingTime;
  bool get paused => _paused;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        _remainingTime--;
        notifyListeners();
      } else {
        _timer!.cancel();
      }
    });
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
}
