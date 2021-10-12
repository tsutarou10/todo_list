import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';


final doneContentProvider = ChangeNotifierProvider(
    (ref) => DoneContentViewModel(client: ref.read(graphQLApiClientProvider)));


class DoneContentViewModel extends ChangeNotifier {
  final GraphQLApiClient _client;

  DoneContentViewModel({required GraphQLApiClient client})
      : _client = client,
        _items= [];

  List<ToDoItem> _items;
  List<ToDoItem> get items => _items;

  Future<void> fetch(String status) async {
    Future<List<ToDoItem>> future = _client.queryTodo(status);
    print('start fetch');
    future.then((value) {
        _items = value;
      })
    .catchError((dynamic error) {
      print(error);
    })
    .whenComplete(() {
      print('complete');
      notifyListeners();
    });
  }

  void reorderData(int oldIndex, int newIndex) {
    if(newIndex > oldIndex) {
      newIndex -= 1;
    }
    final items = _items.removeAt(oldIndex);
    _items.insert(newIndex, items);
    notifyListeners();
  }

  void add(String title, String status, String? memo) {
    _items.add(ToDoItem(title, status, memo));
    notifyListeners();
  }
  void remove(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}

