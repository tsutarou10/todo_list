import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/provider/provider.dart';
import 'package:todo_list/ui/component/input_dialog.dart';
import 'package:todo_list/ui/component/list_items.dart';

class TabPage extends HookWidget {
  final String title;
  final Status status;
  final OnDismissedCondition odc;
  TabPage(
      {Key? key, required this.title, required this.status, required this.odc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = statusToProvider[status];
    print('todo_tabs');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Consumer(builder: (context, watch, child) {
          List<ToDoItem> items = watch(provider).items;
          return Text(title + ' (' + items.length.toString() + ')');
        }),
        actions: [
          Consumer(
            builder: (context, watch, child) {
              return ActionButtonWithInputDialog(icon: const Icon(Icons.add));
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Consumer(builder: (context, watch, child) {
        List<ToDoItem> items = watch(provider).items;
        return buildReorderableListView(context, items, odc, provider);
      }),
    );
  }
}
