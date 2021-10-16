import 'package:flutter/material.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/provider/provider.dart';
import 'package:todo_list/utils/loggre.dart';

class TabPageViewModel extends ChangeNotifier with WidgetsBindingObserver {
  final GraphQLGateway _client;
  final TabPageViewModelArgs _args;

  TabPageViewModel(
      {required GraphQLGateway client, required TabPageViewModelArgs args})
      : _client = client,
        _items = [],
        _args = args {
    WidgetsBinding.instance?.addObserver(this);
  }

  List<ToDoItem> _items;
  List<ToDoItem> get items => _items;

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        // アプリがフォアグラウンドに来たときに取得する
        fetch();
        logger.info('resumed ${_args.status}');
        break;
      case AppLifecycleState.inactive:
        // アプリは表示されているが、フォーカスが当たっていない状態
        updateAllTodo();
        logger.info('inactive ${_args.status}');
        break;
      case AppLifecycleState.paused:
        // アプリがバックグラウンドに遷移
        logger.info('paused');
        break;
      case AppLifecycleState.detached:
        // アプリが終了するときに透
        updateAllTodo();
        logger.info('detached');
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  Future<void> fetch() async {
    Future<List<ToDoItem>> future = _client.queryTodo(_args.status);
    future.then((value) {
      _items = value;
    }).catchError((dynamic error) {
      logger.severe(error);
    }).whenComplete(() {
      notifyListeners();
    });
  }

  Future<void> updateAllTodo() async {
    List<ToDoItem> items = _items;
    items.forEach((item) {
      updateTodo('TEST_CUID', item, true);
    });
    notifyListeners();
  }

  Future<void> createTodo(String cuid, ToDoItem todoItem) async {
    Future<ToDoItem> future = _client.createTodo(cuid, todoItem);
    future.then((value) {
      _items.add(value);
    }).catchError((dynamic error) {
      logger.severe(error);
    }).whenComplete(() {
      notifyListeners();
    });
  }

  Future<void> updateTodo(String cuid, ToDoItem todoItem, [bool? isAll]) async {
    Future<ToDoItem> future = _client.updateTodo(cuid, todoItem);
    future.then((value) {
      _items.add(value);
      _items.asMap().forEach((int i, ToDoItem v) {
        if (v.tid == value.tid && v.priority != value.priority) {
          _items.removeAt(i);
        }
      });
    }).catchError((dynamic error) {
      logger.severe(error);
    }).whenComplete(() {
      if (isAll == null || !isAll) {
        notifyListeners();
      }
    });
  }

  Future<void> deleteTodo(String cuid, String tid) async {
    Future<ToDoItem> future = _client.deleteTodo(cuid, tid);
    future.then((value) {
      _items.asMap().forEach((int i, ToDoItem v) {
        if (v.tid == value.tid) {
          _items.removeAt(i);
        }
      });
    }).catchError((dynamic error) {
      logger.severe(error);
    }).whenComplete(() {
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
      fixSortID();
    });
  }

  void fixSortID() {
    List<ToDoItem> items = [];
    _items.asMap().forEach((int index, ToDoItem item) {
      ToDoItem newItem = item.copyWith(sortID: index);
      items.add(newItem);
    });
    _items = items;
    notifyListeners();
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
