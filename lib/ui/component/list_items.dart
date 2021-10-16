import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/ui/component/input_dialog.dart';

typedef BuildRow = Widget Function(
    BuildContext, int, ToDoItem, OnDismissedCondition, dynamic);
typedef OnDismissedCondition = void Function(
    BuildContext, ToDoItem, int, dynamic);

List<Widget> getListItems(BuildContext context, List<ToDoItem> items,
        OnDismissedCondition odc, dynamic provider) =>
    items
        .asMap()
        .map((index, item) =>
            MapEntry(index, buildRow(context, index, item, odc, provider)))
        .values
        .toList();

Widget buildReorderableListView(BuildContext context, List<ToDoItem> items,
    OnDismissedCondition odc, dynamic provider) {
  return ReorderableListView(
    padding: const EdgeInsets.all(10.0),
    onReorder: (oldIndex, newIndex) {
      context.read(provider).reorderData(oldIndex, newIndex);
    },
    children: getListItems(context, items, odc, provider),
  );
}

Widget createListTile(BuildContext context, ToDoItem item, dynamic provider) {
  if (item.status == Status.IN_PROGRESS) {
    print(item.priority);
  }
  return Card(
    key: ValueKey(item.tid),
    margin: const EdgeInsets.all(10),
    color: priorityToColor[item.priority],
    child: ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: ActionButtonWithInputDialog(
          icon: const Icon(FontAwesomeIcons.edit, color: Colors.black),
          provider: provider,
          tid: item.tid,
          title: item.title,
          memo: item.memo,
          priority: item.priority,
          isCreated: false,
          status: item.status,
        ),
      ),
      trailing: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: IconButton(
            onPressed: () {
              context.read(provider).deleteTodo('TEST_CUID', item.tid);
            },
            icon: const Icon(FontAwesomeIcons.trashAlt)),
      ),
      title: Text(item.title),
      onTap: () {
        Navigator.of(context).pushNamed(todoDetailPageRoute, arguments: item);
      },
    ),
  );
}

BuildRow buildRow = (BuildContext context, int index, ToDoItem item,
    OnDismissedCondition odc, dynamic provider) {
  return Dismissible(
    key: Key(item.title),
    onDismissed: (direction) {
      odc(context, item, index, direction);
    },
    child: createListTile(context, item, provider),
  );
};
