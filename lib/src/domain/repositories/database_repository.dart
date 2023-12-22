import '../models/timer.dart';

abstract class DatabaseRepository {
  Future<List<Timer>> getSavedTimers();

  Future<void> saveTimer(Timer timer);

  Future<void> removeTimer(Timer timer);
}
