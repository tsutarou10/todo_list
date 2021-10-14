import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/ui/component/radio_button.dart';
import 'package:todo_list/ui/component/text_field.dart';
import 'package:todo_list/utils/utils.dart';
import 'package:todo_list/view_model/provider.dart';

class ActionButtonWithInputDialog extends HookWidget {
  final Icon icon;
  String? tid;
  String? title;
  String? memo;
  Priority? priority;
  bool? isCreated;

  ActionButtonWithInputDialog(
      {Key? key,
      required this.icon,
      this.tid,
      this.title,
      this.memo,
      this.priority,
      this.isCreated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        context.read(radioButtonProvider).setValue(priority);
        _inputDialog(context, tid, title, memo, priority, isCreated);
      },
      icon: icon,
    );
  }

  Future<void> _inputDialog(BuildContext context,
      [String? tid,
      String? title,
      String? memo,
      Priority? priority,
      bool? isCreated]) async {
    var _titleController = TextEditingController(text: title);
    var _memoController = TextEditingController(text: memo);

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('TODO Input Form'),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    textField('Title', 'please input Title (30文字以内)', true,
                        _titleController, 30, 1),
                    const SizedBox(height: 30),
                    textField('Memo', 'please input Memo', false,
                        _memoController, null, null),
                    const SizedBox(height: 30),
                    const Text('優先度'),
                    RadioButtonForPriority(),
                  ],
                ),
              );
            }),
            actions: <Widget>[
              textCancelButton(context),
              textOKButton(
                  context, tid, _titleController, _memoController, isCreated),
            ],
          );
        });
  }

  Widget textCancelButton(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        elevation: 16,
      ),
      child: const Text('cancel'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget textOKButton(BuildContext context, String? tid, var titleController,
      var memoController, bool? isCreated) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        elevation: 16,
      ),
      child: const Text('ok'),
      onPressed: () {
        priority = context.read(radioButtonProvider).currentValue;
        ToDoItem todoItem = ToDoItem(
          tid: tid ?? generateUUID(),
          title: titleController.text,
          memo: memoController.text,
          status: Status.TODO,
          priority: priority ?? Priority.HIGH,
        );
        if (isCreated == null || isCreated) {
          context.read(todoContentProvider).createTodo(
                "TEST_CUID",
                todoItem,
              );
        } else {
          context.read(todoContentProvider).updateTodo(
                "TEST_CUID",
                todoItem,
              );
        }
        Navigator.pop(context);
      },
    );
  }
}
