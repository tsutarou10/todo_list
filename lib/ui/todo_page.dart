import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/ui/home/home_page.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';


class ToDoPage extends ConsumerWidget {
  final String title;
  List<ToDoItem> items = [];
  ToDoPage({Key? key, required this.title, required this.items}) : super(key: key);

  List<Widget> _getListItems(BuildContext context) => items
      .asMap()
      .map((index, item) => MapEntry(index, _buildRow(context, index, item)))
      .values
      .toList();

  Widget _buildReorderableListView(BuildContext context) {
    return ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          context.read(todoContentProvider).reorderData(oldIndex, newIndex);
        },
        children: _getListItems(context),
    );
  }

  Widget _buildRow(BuildContext context, int index, ToDoItem item) {
    return Dismissible(
        key: Key(item.title),
        onDismissed:  (direction) {
          if(direction == DismissDirection.endToStart) {
          } else {
            context.read(inProgressContentProvider).add(item.title, item.description.toString());
          }
          context.read(todoContentProvider).remove(index);
        },
        child: ListTile(
                   key: ValueKey(item.title),
                   title: Text(
                       item.title,
                       style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                       ),
                   ),
                   onTap:() {},
               ),
    );
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    items = watch(todoContentProvider).items;
    print('current todo: ${items}');
    return Scaffold(
        appBar: AppBar(
            title: Text(title),
        ),
        body: _buildReorderableListView(context),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              var result = await Navigator.of(context).pushNamed(editPageRoute);
            },
            child: const Icon(Icons.add),
        ),
    );
  }
}

