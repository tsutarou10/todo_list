import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/utils/utils.dart';
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
    @JsonKey(name: 'name') required String status,
    @JsonKey(name: 'memo') String? memo,
    @JsonKey(name: 'createdAt') int? createdAt,
    @JsonKey(name: 'updatedAt') int? updatedAt,
    @JsonKey(name: 'priority') Priority? priority,
    @JsonKey(name: 'hidden') bool? hidden,
  }) = _ToDoItem;

  factory ToDoItem.fromJson(Map<String, dynamic> json) => _$ToDoItemFromJson(json);
}
