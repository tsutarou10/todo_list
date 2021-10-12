import 'package:todo_list/utils/utils.dart';

class ToDoItem {
  String title;
  String status;
  String? memo;
  int? createdAt;
  int? updatedAt;
  String? priority;
  bool? hidden;

  ToDoItem(
      this.title,
      this.status,
      [
        this.memo,
        this.createdAt,
        this.updatedAt,
        this.priority,
        this.hidden,
      ]
    );

  ToDoItem.fromMap(Map<String, dynamic> map)
      : title = map['title'] as String,
        status = map['status'] as String,
        memo = map['memo'] ? map['memo'] as String : null,
        createdAt = map['createdAt'] ? map['createdAt'] as int : null,
        updatedAt = map['upsatedAt'] ? map['updatedAt'] as int : null,
        priority = map['priority'] ? map['priority'] as String : null,
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
