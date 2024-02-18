import '../models/adaptive_timer.dart';
import '../repositories/database_repository.dart';

class AdaptiveTimerService {
  final DatabaseRepository _repository;

  AdaptiveTimerService(this._repository);

  Future<void> addTimer(AdaptiveTimer timer) {
    return _repository.addDocument('AdaptiveTimers', timer.toMap());
  }

  Future<void> updateTimer(AdaptiveTimer timer) {
    return _repository.updateDocument(
        'AdaptiveTimers', timer.id.toString(), timer.toMap());
  }

  Future<void> deleteTimer(int id) {
    return _repository.deleteDocument('AdaptiveTimers', id.toString());
  }

  Stream<List<AdaptiveTimer>> getTimers() {
    return _repository.getDocuments('AdaptiveTimers').map((list) => list
        .map((data) => AdaptiveTimer(
              id: data['id'],
              userId: data['userId'],
              totalTime: data['totalTime'],
              breakTime: data['breakTime'],
              workTime: data['workTime'],
            ))
        .toList());
  }
}
