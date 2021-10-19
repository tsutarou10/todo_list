import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/provider/provider.dart';
import 'package:todo_list/utils/loggre.dart';

class TodoDetailPage extends HookWidget {
  TodoDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToDoItem item = ModalRoute.of(context)!.settings.arguments as ToDoItem;
    final provider = statusToProvider[item.status];
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
        actions: [
          Consumer(builder: (context, watch, child) {
            return IconButton(
              icon: const Icon(FontAwesomeIcons.trashAlt),
              onPressed: () {
                logger.info(item.tid);
                context.read(provider).deleteTodo('TEST_CUID', item.tid);
                Navigator.pop(context);
              },
            );
          }),
        ],
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: createDetailElement(item),
          ),
        ),
      ),
    );
  }

  List<Widget> createDetailElement(ToDoItem item) {
    List<Widget> rsl = [
      Text('title: ${item.title}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    ];
    if (item.memo != null) {
      rsl.add(Text('memo: ${item.memo}', style: TextStyle(fontSize: 20)));
    }
    rsl.add(Text('status: ${statusToString[item.status]}',
        style: TextStyle(fontSize: 20)));
    return rsl;
  }
}
