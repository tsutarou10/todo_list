import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/ui/component/list_items.dart';
import 'package:todo_list/ui/tabs/tab_page.dart';
import 'package:todo_list/view_model/bottom_navigation_view_model.dart';
import 'package:todo_list/view_model/provider.dart';

class HomePage extends HookWidget {
  final String title;
  HomePage({Key? key, required this.title}) : super(key: key);
  var currentTab;

  OnDismissedCondition odcForTodo =
      (BuildContext context, ToDoItem item, int index, direction) {
    if (direction == DismissDirection.endToStart) {
    } else {
      Priority priority = item.priority != null ? item.priority! : Priority.LOW;
      context
          .read(inProgressContentProvider)
          .add(item.tid, item.title, item.status, priority, item.memo);
    }
    context.read(todoContentProvider).remove(index);
  };

  OnDismissedCondition odcForInProgress =
      (BuildContext context, ToDoItem item, int index, direction) {
    Priority priority = item.priority != null ? item.priority! : Priority.LOW;
    if (direction == DismissDirection.endToStart) {
      context
          .read(todoContentProvider)
          .add(item.tid, item.title, item.status, priority, item.memo);
    } else {
      context
          .read(doneContentProvider)
          .add(item.tid, item.title, item.status, priority, item.memo);
    }
    context.read(inProgressContentProvider).remove(index);
  };

  OnDismissedCondition odcForDone =
      (BuildContext context, ToDoItem item, int index, direction) {
    Priority priority = item.priority != null ? item.priority! : Priority.LOW;
    if (direction == DismissDirection.endToStart) {
      context
          .read(inProgressContentProvider)
          .add(item.tid, item.title, item.status, priority, item.memo);
    } else {}
    context.read(doneContentProvider).remove(index);
  };

  void initCurrentTab() {
    currentTab = [
      TabPage(title: 'ToDo', status: Status.TODO, odc: odcForTodo),
      TabPage(
          title: 'In Progress',
          status: Status.IN_PROGRESS,
          odc: odcForInProgress),
      TabPage(title: 'Done', status: Status.DONE, odc: odcForDone),
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('home_page.dart');
    initCurrentTab();
    return Scaffold(
      body: Consumer(builder: (context, watch, child) {
        int currentIndex = watch(bottomNavigationBarProvider).currentIndex;
        return currentTab[currentIndex];
      }),
      bottomNavigationBar: Consumer(
        builder: (context, watch, child) {
          int currentIndex = watch(bottomNavigationBarProvider).currentIndex;
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) {
              context.read(bottomNavigationBarProvider).currentIndex = index;
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'ToDo',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'In Progress',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Done',
              ),
            ],
          );
        },
      ),
    );
  }
}
