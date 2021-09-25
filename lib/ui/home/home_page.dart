import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:todo_list/ui/bottom_navigation/bottom_navigation_bar.dart';
import 'package:todo_list/ui/test.dart';

final bottomNavigationProvider = ChangeNotifierProvider((ref) => BottomNavigationBarProvider());

class HomePage extends ConsumerWidget {
  final String title;
  HomePage({Key? key, required this.title}) : super(key: key);

	var currentTab = [
		TestPage(title: '1st'),
		TestPage(title: '2nd'),
		TestPage(title: '3rd'),
	];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
		int currentIndex = watch(bottomNavigationProvider).currentIndex;
		print(currentIndex);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: currentTab[currentIndex],
			bottomNavigationBar:  BottomNavigationBar(
					backgroundColor: Colors.white,
					currentIndex: currentIndex,
					onTap: (index) {
						context.read(bottomNavigationProvider).currentIndex = index;
					},
					type: BottomNavigationBarType.fixed,
					selectedItemColor: Colors.blue,
					items:[
						BottomNavigationBarItem(
								icon: Icon (Icons.favorite),
								title: Text('1st'),
						),
						BottomNavigationBarItem(
								icon: Icon (Icons.home),
								title: Text('2nd'),
						),
						BottomNavigationBarItem(
								icon: Icon (Icons.search),
								title: Text('3rd'),
						),
					],
			),
    );
  }
}

