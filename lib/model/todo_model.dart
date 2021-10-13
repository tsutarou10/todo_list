import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/utils/utils.dart';

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



class ToDoItem {
  String tid;
  String title;
  String status;
  String? memo;
  int? createdAt;
  int? updatedAt;
  Priority? priority;
  bool? hidden;

  ToDoItem(
      {
        required this.tid,
        required this.title,
        required this.status,
        this.memo,
        this.createdAt,
        this.updatedAt,
        this.priority,
        this.hidden,
      }
    );

  ToDoItem.fromMap(Map<String, dynamic> map)
      : tid = map['tid'] as String,
        title = map['title'] as String,
        status = map['status'] as String,
        memo = map['memo'] ? map['memo'] as String : null,
        createdAt = map['createdAt'] ? map['createdAt'] as int : null,
        updatedAt = map['upsatedAt'] ? map['updatedAt'] as int : null,
        priority = map['priority'] ? map['priority'] as Priority : null,
        hidden = map['hidden'] ? toBool(map['hidden'] as String) : false;

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'title': title,
      'status': status,
      'memo': memo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'priority': priority,
      'hidden': hidden,
    };
  }
}
