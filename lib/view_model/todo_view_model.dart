import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';

final todoContentProvider = ChangeNotifierProvider((ref) => TodoContentViewModel());

class TodoContentViewModel with ChangeNotifier {
	List<ToDoItem> _items = [
		ToDoItem("Title A", "Content 1"),
		ToDoItem("Title B", "Content 2"),
		ToDoItem("Title C", "Content 3"),
	];
	List<ToDoItem> get items => _items;
	void reorderData(int oldIndex, int newIndex) {
		if(newIndex > oldIndex) {
			newIndex -= 1;
		}
		print(newIndex);
		final items = _items.removeAt(oldIndex);
		_items.insert(newIndex, items);
		notifyListeners();
	}

	void add(String title, String content) {
		_items.add(ToDoItem(title, content));
		notifyListeners();
	}
	void remove(int index) {
		_items.removeAt(index);
		notifyListeners();
	}
}

