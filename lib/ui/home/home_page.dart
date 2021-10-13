import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/ui/tabs/done_page.dart';
import 'package:todo_list/ui/tabs/inprogress_page.dart';
import 'package:todo_list/ui/tabs/todo_page.dart';
import 'package:todo_list/view_model/bottom_navigation_view_model.dart';
import 'package:todo_list/view_model/done_view_model.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';


class HomePage extends HookWidget {
  final String title;
  HomePage({Key? key, required this.title}) : super(key: key);
  var currentTab;

  void initCurrentTab() {
    currentTab = [
      ToDoPage(title: 'ToDo'),
      InProgressPage(title: 'In Progress'),
      DonePage(title: 'Done'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('home_page.dart');
    initCurrentTab();
    return Scaffold(
      body: Consumer (
        builder: (context, watch, child) {
          int currentIndex = watch(bottomNavigationBarProvider).currentIndex;
          return currentTab[currentIndex];
        }
      ),
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
            items:[
              BottomNavigationBarItem(
                  icon: Icon (Icons.favorite),
                  title: Text('ToDo'),
              ),
              BottomNavigationBarItem(
                  icon: Icon (Icons.home),
                  title: Text('In Progress'),
              ),
              BottomNavigationBarItem(
                icon: Icon (Icons.search),
                title: Text('Done'),
              ),
            ],
          );
        },
      ),
    );
  }
}

