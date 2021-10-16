import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_list/model/todo_model.dart';

class TodoDetailPage extends HookWidget {
  final String title;
  TodoDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToDoItem item = ModalRoute.of(context)!.settings.arguments as ToDoItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('title: ${item.title}, sortID: ${item.sortID}'),
    );
  }
}
