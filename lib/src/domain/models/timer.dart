import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

import '../../utils/constants/strings.dart';

@Entity(tableName: timersTableName)
class Timer extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  const Timer({
    this.id,
  });

  factory Timer.fromMap(Map<String, dynamic> map) {
    return Timer(
      id: map['id'] != null ? map['id'] as int : null,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
    ];
  }
}
