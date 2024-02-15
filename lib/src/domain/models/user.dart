import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'User')
class User extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? name;

  const User({
    this.id,
    this.name,
  });

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
