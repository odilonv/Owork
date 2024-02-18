import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'Users')
class User extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? name;

  const User({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
    ];
  }
}
