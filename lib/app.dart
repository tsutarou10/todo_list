import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/provider/provider.dart';
import 'package:todo_list/ui/route/route_page.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read(todoContentProvider).fetch();
      context.read(inProgressContentProvider).fetch();
      context.read(doneContentProvider).fetch();
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
