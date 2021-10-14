import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

enum Priority { HIGH, MID, LOW }

Map<Priority, String> priorityToString = {
  Priority.HIGH: 'HIGH',
  Priority.MID: 'MID',
  Priority.LOW: 'LOW',
};

Map<String, Priority> stringToPriority = {
  'HIGH': Priority.HIGH,
  'MID': Priority.MID,
  'LOW': Priority.LOW,
};

Map<Priority, String> priorityToRadioButtonText = {
  Priority.HIGH: '高',
  Priority.MID: '中',
  Priority.LOW: '低',
};

enum Status { TODO, IN_PROGRESS, DONE }

Map<Status, String> statusToString = {
  Status.TODO: 'TODO',
  Status.IN_PROGRESS: 'IN_PROGRESS',
  Status.DONE: 'DONE',
};

Map<String, Status> stringToStatus = {
  'TODO': Status.TODO,
  'IN_PROGRESS': Status.IN_PROGRESS,
  'DONE': Status.DONE,
};

Map<Priority, dynamic> priorityToColor = {
  Priority.HIGH: Colors.red,
  Priority.MID: Colors.blue,
  Priority.LOW: Colors.grey,
};

@freezed
class ToDoItem with _$ToDoItem {
  const ToDoItem._();
  const factory ToDoItem({
    @JsonKey(name: 'tid') required String tid,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'status') required Status status,
    @JsonKey(name: 'memo') String? memo,
    @JsonKey(name: 'createdAt') int? createdAt,
    @JsonKey(name: 'updatedAt') int? updatedAt,
    @JsonKey(name: 'priority') Priority? priority,
    @JsonKey(name: 'hidden') bool? hidden,
  }) = _ToDoItem;

  factory ToDoItem.fromJson(Map<String, dynamic> json) =>
      _$ToDoItemFromJson(json);
}
