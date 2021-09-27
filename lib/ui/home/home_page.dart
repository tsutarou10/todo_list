import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/ui/done_page.dart';
import 'package:todo_list/ui/inprogress_page.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/ui/todo_page.dart';
import 'package:todo_list/view_model/bottom_navigation_view_model.dart';
import 'package:todo_list/view_model/done_view_model.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

class HomePage extends ConsumerWidget {
  final String title;
  HomePage({Key? key, required this.title}) : super(key: key);
	var currentTab;


	void initCurrentTab(List<ToDoItem> todoItems, List<ToDoItem> inProgressItems, List<ToDoItem> doneItems) {
		currentTab = [
			ToDoPage(title: 'ToDo', items: todoItems),
			InProgressPage(title: 'In Progress', items: inProgressItems),
			DonePage(title: 'Done', items: doneItems),
		];
	}

  @override
  Widget build(BuildContext context, ScopedReader watch) {
		int currentIndex = watch(bottomNavigationBarProvider).currentIndex;
		List<ToDoItem> todoItems = watch(todoContentProvider).items;
		List<ToDoItem> inprogressItems = watch(inProgressContentProvider).items;
		List<ToDoItem> doneItems = watch(doneContentProvider).items;
		initCurrentTab(todoItems, inprogressItems, doneItems);
		print(currentIndex);
    return Scaffold(
      body: currentTab[currentIndex],
			bottomNavigationBar:  BottomNavigationBar(
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
			),
    );
  }
}
