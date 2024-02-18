import '../models/user.dart';
import '../repositories/database_repository.dart';

class UserService {
  final DatabaseRepository _repository;

  UserService(this._repository);

  Future<void> addUser(User user) {
    return _repository.addDocument('Users', user.toMap());
  }

  Future<void> updateUser(User user) {
    return _repository.updateDocument(
        'Users', user.id.toString(), user.toMap());
  }

  Future<void> deleteUser(int id) {
    return _repository.deleteDocument('Users', id.toString());
  }

  Stream<List<User>> getUsers() {
    return _repository.getDocuments('Users').map((list) => list
        .map((data) => User(
              id: data['id'],
              name: data['name'],
            ))
        .toList());
  }
}
