import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';

class RadioButtonViewModel with ChangeNotifier {
  var _currentValue = Priority.HIGH;
  get currentValue => _currentValue;
  void setValue(value) {
    if (value != null) {
      _currentValue = value;
      notifyListeners();
    }
  }
}
