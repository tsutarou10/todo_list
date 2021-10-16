import 'package:ferry/ferry.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql_client.dart';
import 'package:todo_list/utils/loggre.dart';
import 'package:todo_list/utils/utils.dart';

class GraphQLRepository implements GraphQLGateway {
  final GraphQLClientGateway _client;
  GraphQLRepository(this._client);

  @override
  Future<List<ToDoItem>> queryTodo(Status status) async {
    List<ToDoItem> rsl = [];
    final request = GlistTodoListsReq((b) => b
      ..fetchPolicy = FetchPolicy.NetworkOnly
      ..vars.filter.status.eq = statusToString[status]
      ..vars.filter.cuid.eq = 'TEST_CUID');

    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null && data.listTodoLists != null) {
        final items = data.listTodoLists?.toJson()['items'];
        for (dynamic item in items) {
          rsl.add(ToDoItem.fromJson(item));
        }
        return rsl;
      } else {
        logger.info('not found');
      }
    }
    return rsl;
  }

  @override
  Future<ToDoItem> createTodo(String cuid, ToDoItem todoItem) async {
    // int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    logger.info(cuid);
    logger.info(todoItem);
    final request = GcreateTodoListReq((b) => b
      ..vars.createtodolistinput.cuid = cuid
      ..vars.createtodolistinput.tid = todoItem.tid
      ..vars.createtodolistinput.status = statusToString[todoItem.status]
      ..vars.createtodolistinput.title = todoItem.title
      ..vars.createtodolistinput.priority = priorityToString[todoItem.priority]
      ..vars.createtodolistinput.sortID = todoItem.sortID);
    //..vars.createtodolistinput.title = title);
    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.createTodoList?.toJson();
        logger.info(item);
        logger.info(ToDoItem.fromJson(item));
        return ToDoItem.fromJson(item);
      } else {
        logger.info('not found');
      }
    }
    return ToDoItem(
        tid: generateUUID(), title: "title", status: Status.TODO, sortID: 0);
  }

  @override
  Future<ToDoItem> updateTodo(String cuid, ToDoItem todoItem) async {
    //jint nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    logger.info(todoItem);
    final request = GupdateTodoListReq((b) => b
      ..vars.input.cuid = cuid
      ..vars.input.tid = todoItem.tid
      ..vars.input.status = statusToString[todoItem.status]
      ..vars.input.title = todoItem.title
      ..vars.input.priority = priorityToString[todoItem.priority]
      ..vars.input.sortID = todoItem.sortID);
    //..vars.createtodolistinput.title = title);
    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.updateTodoList?.toJson();
        return ToDoItem.fromJson(item);
      } else {
        logger.info('not found');
      }
    }
    return ToDoItem(
        tid: generateUUID(), title: "title", status: Status.TODO, sortID: 0);
  }

  @override
  Future<ToDoItem> deleteTodo(String cuid, String tid) async {
    final request = GdeleteTodoListReq((b) => b
      ..vars.input.cuid = cuid
      ..vars.input.tid = tid);
    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.deleteTodoList?.toJson();
        return ToDoItem.fromJson(item);
      } else {
        logger.info('not found');
      }
    }
    return ToDoItem(
        tid: generateUUID(), title: "title", status: Status.TODO, sortID: 0);
  }
}
