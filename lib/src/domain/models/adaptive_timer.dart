import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

import 'user.dart';

@Entity(tableName: 'AdaptiveTimers', foreignKeys: [
  ForeignKey(
    childColumns: ['userId'],
    parentColumns: ['id'],
    entity: User,
  )
])
class AdaptiveTimer extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  @ColumnInfo(name: 'userId')
  final int userId;

  final int? totalTime;
  final int? breakTime;
  final int? workTime;

  const AdaptiveTimer({
    this.id,
    required this.userId,
    this.totalTime,
    this.breakTime,
    this.workTime,
  });

  factory AdaptiveTimer.fromMap(Map<String, dynamic> map) {
    return AdaptiveTimer(
      id: map['id'] != null ? map['id'] as int : null,
      userId: map['userId'] as int,
      totalTime: map['totalTime'] != null ? map['totalTime'] as int : null,
      breakTime: map['breakTime'] != null ? map['breakTime'] as int : null,
      workTime: map['workTime'] != null ? map['workTime'] as int : null,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      userId,
      totalTime,
      breakTime,
      workTime,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'totalTime': totalTime,
      'breakTime': breakTime,
      'workTime': workTime,
    };
  }
}
