import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';
import 'package:todo_list/ui/home/home_page.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/view_model/done_view_model.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

class DonePage extends StatelessWidget {
  final String title;
  final graphQlClient = GraphQLApiClient();
  DonePage({Key? key, required this.title}) : super(key: key);


  List<Widget> _getListItems(BuildContext context, List<ToDoItem> items) => items
      .asMap()
      .map((index, item) => MapEntry(index, _buildRow(context, index, item)))
      .values
      .toList();

  Widget _buildReorderableListView(BuildContext context, List<ToDoItem> items) {
    return ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          context.read(todoContentProvider).reorderData(oldIndex, newIndex);
        },
        children: _getListItems(context, items),
    );
  }

  Widget _buildRow(BuildContext context, int index, ToDoItem item) {
    return Dismissible(
        key: Key(item.title),
        onDismissed:  (direction) {
          if(direction == DismissDirection.endToStart) {
            context.read(inProgressContentProvider).add(item.title, item.status, item.memo);
          } else {
          }
          context.read(doneContentProvider).remove(index);
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
  Widget build(BuildContext context) {
    print('todo_tabs');
    return Scaffold(
        appBar: AppBar(
            title: Text(title),
        ),
        body: Consumer(
            builder: (context, watch, child) {
              List<ToDoItem> items = watch(doneContentProvider).items;
              print('todo items: ${items}');
              return _buildReorderableListView(context, items);
            }
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              //context.read(todoContentProvider).fetch("TODO");
            },
            child: const Icon(Icons.add),
        ),
    );
  }
}

