import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/view_model/provider.dart';

class RadioButtonForPriority extends HookWidget {
  RadioButtonForPriority({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _createRadioButtonForPriority();
  }

  Widget _createRadioButtonForPriority() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(Priority.values.length, (index) {
          String title =
              priorityToRadioButtonText[Priority.values[index]].toString();
          return Flexible(
            child: Consumer(
              builder: (context, watch, child) {
                Priority currentPriority =
                    watch(radioButtonProvider).currentValue;
                print(currentPriority);
                return RadioListTile(
                  title: Text(title),
                  value: Priority.values[index],
                  groupValue: currentPriority,
                  onChanged: (value) {
                    context.read(radioButtonProvider).setValue(value);
                  },
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
