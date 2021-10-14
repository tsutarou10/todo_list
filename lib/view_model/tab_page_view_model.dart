import 'package:flutter/material.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/model/todo_model.dart';

class TabPageViewModel extends ChangeNotifier with WidgetsBindingObserver {
  final GraphQLGateway _client;

  TabPageViewModel({required GraphQLGateway client})
      : _client = client,
        _items = [] {
    WidgetsBinding.instance?.addObserver(this);
  }

  List<ToDoItem> _items;
  List<ToDoItem> get items => _items;

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        // アプリがフォアグラウンドに来たときに取得する
        print('resumed');
        break;
      case AppLifecycleState.inactive:
        // アプリは表示されているが、フォーカスが当たっていない状態
        print('inactive');
        break;
      case AppLifecycleState.paused:
        // アプリがバックグラウンドに遷移
        print('paused');
        break;
      case AppLifecycleState.detached:
        // アプリが終了するときに透
        print('detached');
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  Future<void> fetch(Status status) async {
    Future<List<ToDoItem>> future = _client.queryTodo(status);
    print('start fetch');
    future.then((value) {
      _items = value;
    }).catchError((dynamic error) {
      print(error);
    }).whenComplete(() {
      print('complete');
      notifyListeners();
    });
  }

  Future<void> updateAllTodo() async {
    items.forEach((item) {});
  }

  Future<void> createTodo(String cuid, ToDoItem todoItem) async {
    Future<ToDoItem> future = _client.createTodo(cuid, todoItem);
    print('start create');
    future.then((value) {
      _items.add(value);
    }).catchError((dynamic error) {
      print(error);
    }).whenComplete(() {
      print('complete');
      notifyListeners();
    });
  }

  Future<void> updateTodo(String cuid, ToDoItem todoItem) async {
    Future<ToDoItem> future = _client.updateTodo(cuid, todoItem);
    print('start create');
    future.then((value) {
      _items.add(value);
      _items.asMap().forEach((int i, ToDoItem v) {
        print(v.tid);
        if (v.tid == value.tid) {
          _items.removeAt(i);
        }
      });
    }).catchError((dynamic error) {
      print(error);
    }).whenComplete(() {
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
        if (v.tid == value.tid) {
          _items.removeAt(i);
        }
      });
    }).catchError((dynamic error) {
      print(error);
    }).whenComplete(() {
      print('delete complete');
      print(_items);
      notifyListeners();
    });
  }

  void reorderData(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    Future.delayed(Duration(milliseconds: 10), () {
      final items = _items.removeAt(oldIndex);
      _items.insert(newIndex, items);
      notifyListeners();
    });
  }

  void add(ToDoItem item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
