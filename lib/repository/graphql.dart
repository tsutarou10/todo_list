import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/utils/utils.dart';

class GraphQLRepository implements GraphQLGateway {
  int id = 8;
  final GraphQLClientGateway _client;
  GraphQLRepository(this._client);

  @override
  Future<List<ToDoItem>> queryTodo(Status status) async {
    List<ToDoItem> rsl = [];
    final request = GlistTodoListsReq(
        (b) => b..vars.filter.status.eq = statusToString[status]);

    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null && data.listTodoLists != null) {
        final items = data.listTodoLists?.toJson()['items'];
        print('before: ${items}');
        for (dynamic item in items) {
          rsl.add(ToDoItem.fromJson(item));
        }
        print('after: ${rsl}');
        return rsl;
      } else {
        print('not found');
      }
    }
    return rsl;
  }

  @override
  Future<ToDoItem> createTodo(String cuid, ToDoItem todoItem) async {
    // int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final request = GcreateTodoListReq((b) => b
      ..vars.createtodolistinput.cuid = cuid
      ..vars.createtodolistinput.tid = todoItem.tid
      ..vars.createtodolistinput.status = statusToString[todoItem.status]
      ..vars.createtodolistinput.title = todoItem.title
      ..vars.createtodolistinput.priority =
          priorityToString[todoItem.priority]);
    //..vars.createtodolistinput.title = title);
    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.createTodoList?.toJson();
        print('mutation: ${item}');
        return ToDoItem.fromJson(item);
      } else {
        print('not found');
      }
    }
    return ToDoItem(tid: generateUUID(), title: "title", status: Status.TODO);
  }

  @override
  Future<ToDoItem> updateTodo(String cuid, ToDoItem todoItem) async {
    //jint nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final request = GupdateTodoListReq((b) => b
      ..vars.input.cuid = cuid
      ..vars.input.tid = todoItem.tid
      ..vars.input.status = statusToString[todoItem.status]
      ..vars.input.title = todoItem.title
      ..vars.input.priority = priorityToString[todoItem.priority]);
    //..vars.createtodolistinput.title = title);
    Stream<dynamic> events = _client.doRequest(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.updateTodoList?.toJson();
        print('mutation: ${item}');
        return ToDoItem.fromJson(item);
      } else {
        print('not found');
      }
    }
    return ToDoItem(tid: generateUUID(), title: "title", status: Status.TODO);
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
        print('delete: ${item}');
        return ToDoItem.fromJson(item);
      } else {
        print('not found');
      }
    }
    return ToDoItem(tid: generateUUID(), title: "title", status: Status.TODO);
  }
}
