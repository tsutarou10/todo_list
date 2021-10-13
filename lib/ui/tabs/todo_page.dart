import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';
import 'package:todo_list/ui/component/input_dialog.dart';
import 'package:todo_list/ui/component/list_items.dart';
import 'package:todo_list/ui/home/home_page.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

class ToDoPage extends HookWidget {
  final String title;
  List<ToDoItem> items = [];
  final graphQlClient = GraphQLApiClient();
  ToDoPage({Key? key, required this.title}) : super(key: key);


  OnDismissedCondition odc = (BuildContext context, ToDoItem item, int index, direction) {
      if(direction == DismissDirection.endToStart) {
      } else {
        context.read(inProgressContentProvider).add(item.tid, item.title, item.status, item.memo);
      }
      context.read(todoContentProvider).remove(index);
  };

  @override
  Widget build(BuildContext context) {
    print('todo_tabs');
    return Scaffold(
        appBar: AppBar(
            title: Text(title),
        ),
        body: Consumer(
            builder: (context, watch, child) {
              items = watch(todoContentProvider).items;
              return buildReorderableListView(context, items, odc);
            }
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              InputDialog(context);
            },
            child: const Icon(Icons.add),
        ),
    );
  }
}
