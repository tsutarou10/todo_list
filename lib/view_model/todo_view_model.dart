import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';


final todoContentProvider = ChangeNotifierProvider(
    (ref) => TodoContentViewModel(client: ref.read(graphQLApiClientProvider)));


class TodoContentViewModel extends ChangeNotifier {
  final GraphQLApiClient _client;

  TodoContentViewModel({required GraphQLApiClient client})
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

  Future<void> createTodo(String cuid, String title, String memo, String status, Priority priority) async {
    Future<ToDoItem> future = _client.createTodo(cuid, title, memo, status, priority);
    print('start create');
    future.then((value) {
        _items.add(value);
      })
    .catchError((dynamic error) {
      print(error);
    })
    .whenComplete(() {
      print('complete');
      notifyListeners();
    });
  }

  Future<void> updateTodo(String cuid, String tid, String title, String memo, String status, Priority priority) async {
    Future<ToDoItem> future = _client.updateTodo(cuid, tid, title, memo, status, priority);
    print('start create');
    future.then((value) {
        _items.add(value);
        _items.asMap().forEach((int i, ToDoItem v) {
          print(v.tid);
          if(v.tid == value.tid) {
            _items.removeAt(i);
          }
        });
      })
    .catchError((dynamic error) {
      print(error);
    })
    .whenComplete(() {
      print('complete');
      notifyListeners();
    });
  }

  Future<void> deleteTodo(String cuid, String tid) async {
    Future<ToDoItem> future = _client.deleteTodo(cuid, tid);
    print('start delete');
    future.then((value) {
      print(value.tid);
      _items.asMap().forEach((int i, ToDoItem v) {
        print(v.tid);
        if(v.tid == value.tid) {
          _items.removeAt(i);
        }
      });
      })
    .catchError((dynamic error) {
      print(error);
    })
    .whenComplete(() {
      print('delete complete');
      print(_items);
      notifyListeners();
    });
  }

  void reorderData(int oldIndex, int newIndex) {
    if(newIndex > oldIndex) {
      newIndex -= 1;
    }
    Future.delayed(Duration(milliseconds: 10), () {
      final items = _items.removeAt(oldIndex);
      _items.insert(newIndex, items);
      notifyListeners();
    });
  }

  void add(String tid, String title, String status, Priority priority, String? memo) {
    _items.add(ToDoItem(tid: tid, title: title, status: status, priority: priority));
    notifyListeners();
  }

  void remove(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}

