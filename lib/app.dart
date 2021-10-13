import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/ui/route/route_page.dart';
import 'package:todo_list/view_model/done_view_model.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

class App extends HookWidget {
	@override
	Widget build(BuildContext context) {
    useEffect(() {
      context.read(todoContentProvider).fetch("TODO");
      context.read(inProgressContentProvider).fetch("IN_PROGRESS");
      context.read(doneContentProvider).fetch("DONE");
    }, const []);
		return MaterialApp(
				title: 'Flutter Demo',
				theme: ThemeData(
						primarySwatch: Colors.blue,
				),
				initialRoute: initialRoute,
				routes: router,
		);
	}
}
