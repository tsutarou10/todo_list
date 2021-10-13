import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

Map<Priority, String> priorityToRadioButtonText = {
  Priority.HIGH: '高',
  Priority.MID: '中',
  Priority.LOW: '低',
};

Future<void> InputDialog(BuildContext context, [String? tid, String? title, String? memo, Priority? priority, bool? isCreated]) async {
  Priority _gValue = priority != null ? priority : Priority.HIGH;
  var _titleController = TextEditingController(text: title);
  var _memoController = TextEditingController(text: memo);
  void _onRadioSelected(value) {
    _gValue = value;
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          title: Text('TODO Input Form'),
          content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Title',
                              hintText: 'please input Title (30文字以内)',
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(30),
                          ],
                          keyboardType: TextInputType.multiline,
                          controller: _titleController,
                          autofocus: true,
                      ),
                      SizedBox(
                          height: 30,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Memo',
                              hintText: 'please input memo',
                          ),
                          keyboardType: TextInputType.multiline,
                          controller: _memoController,
                          maxLines: null,
                      ),
                      SizedBox(height: 30),
                      Text('優先度'),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(Priority.values.length, (index) {
                          String title = priorityToRadioButtonText[Priority.values[index]].toString();
                          return Flexible(
                            child: RadioListTile(
                                title: Text(title),
                                value: Priority.values[index],
                                groupValue: _gValue,
                                onChanged:(value) {
                                  setState(() {
                                    _onRadioSelected(value);
                                  });
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  );
              },
          ),
          actions: <Widget> [
            FlatButton(
                color: Colors.white,
                textColor: Colors.blue,
                child: Text('cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
            ),
            FlatButton(
                color: Colors.white,
                textColor: Colors.blue,
                child: Text('ok'),
                onPressed: () {
                  print(isCreated);
                  if(isCreated == null || isCreated) {
                    context.read(todoContentProvider).createTodo(
                        "TEST_CUID",
                        _titleController.text,
                        _memoController.text,
                        "TODO",
                        _gValue,
                        );
                  } else {
                    context.read(todoContentProvider).updateTodo(
                        "TEST_CUID",
                        tid!,
                        _titleController.text,
                        _memoController.text,
                        "TODO",
                        _gValue,
                        );
                  }
                  Navigator.pop(context);
                },
            ),
          ],
        );
    }
  );
}

