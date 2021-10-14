import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';
import 'package:todo_list/ui/component/input_dialog.dart';
import 'package:todo_list/ui/component/list_items.dart';
import 'package:todo_list/ui/home/home_page.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/view_model/done_view_model.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

class DonePage extends HookWidget {
  final String title;
  final graphQlClient = GraphQLApiClient();
  DonePage({Key? key, required this.title}) : super(key: key);

  OnDismissedCondition odc =
      (BuildContext context, ToDoItem item, int index, direction) {
    Priority priority = item.priority != null ? item.priority! : Priority.LOW;
    if (direction == DismissDirection.endToStart) {
      context
          .read(inProgressContentProvider)
          .add(item.tid, item.title, item.status, priority, item.memo);
    } else {}
    context.read(doneContentProvider).remove(index);
  };

  @override
  Widget build(BuildContext context) {
    print('done_tabs');
    return Scaffold(
      appBar: AppBar(
        title: Consumer(builder: (context, watch, child) {
          List<ToDoItem> items = watch(doneContentProvider).items;
          return Text(title + ' (' + items.length.toString() + ')');
        }),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Consumer(builder: (context, watch, child) {
        List<ToDoItem> items = watch(doneContentProvider).items;
        return buildReorderableListView(
            context, items, odc, doneContentProvider);
      }),
      floatingActionButton: ActionButtonWithInputDialog(icon: Icon(Icons.add)),
    );
  }
}
