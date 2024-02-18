import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseRepository {
  final FirebaseFirestore _firestore;

  DatabaseRepository(this._firestore);

  Future<void> addDocument(String collection, Map<String, dynamic> data) {
    return _firestore.collection(collection).add(data);
  }

  Future<void> updateDocument(
      String collection, String id, Map<String, dynamic> data) {
    return _firestore.collection(collection).doc(id).update(data);
  }

  Future<void> deleteDocument(String collection, String id) {
    return _firestore.collection(collection).doc(id).delete();
  }

  Stream<List<Map<String, dynamic>>> getDocuments(String collection) {
    return _firestore
        .collection(collection)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }
}
