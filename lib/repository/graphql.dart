import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/utils/utils.dart';
import 'package:todo_list/view_model/user_view_model.dart';

final graphQLApiClientProvider = Provider((ref) => GraphQLApiClient());

class GraphQLApiClient implements GraphQLGateway {
  int id = 8;
  late final Client _client;
  GraphQLApiClient() {
    final link = HttpLink(
      'https://jysbajoanvatjmvixye73inwse.appsync-api.ap-northeast-1.amazonaws.com/graphql',
      defaultHeaders: <String, String>{
        'x-api-key': 'da2-p4ehmits3vh2dbw24mdvp7eal4',
      },
    );
    this._client = Client(link: link);
  }

  Future<List<ToDoItem>> queryTodo(String status) async {
    List<ToDoItem> rsl = [];
    final request = GlistTodoListsReq((b) => b..vars.filter.status.eq = status);

    Stream<dynamic> events = _client.request(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null && data.listTodoLists != null) {
        final items = data.listTodoLists?.toJson()['items'];
        print('before: ${items}');
        for (dynamic item in items) {
          rsl.add(ToDoItem(
            tid: item['tid'],
            title: item['title'],
            status: item['status'],
            priority: stringToPriority[item['priority']],
          ));
        }
        print('after: ${rsl}');
        return rsl;
      } else {
        print('not found');
      }
    }
    return rsl;
  }

  Future<ToDoItem> createTodo(String cuid, ToDoItem todoItem) async {
    int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final request = GcreateTodoListReq((b) => b
      ..vars.createtodolistinput.cuid = cuid
      ..vars.createtodolistinput.tid = todoItem.tid
      ..vars.createtodolistinput.status = todoItem.status
      ..vars.createtodolistinput.title = todoItem.title
      ..vars.createtodolistinput.priority =
          priorityToString[todoItem.priority]);
    //..vars.createtodolistinput.title = title);
    Stream<dynamic> events = _client.request(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.createTodoList?.toJson();
        print('mutation: ${item}');
        return ToDoItem(
            tid: item['tid'],
            title: item['title'],
            status: item['status'],
            priority: stringToPriority[item['priority']]);
      } else {
        print('not found');
      }
    }
    return ToDoItem(tid: generateUUID(), title: "title", status: "status");
  }

  Future<ToDoItem> updateTodo(String cuid, ToDoItem todoItem) async {
    int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final request = GupdateTodoListReq((b) => b
      ..vars.input.cuid = cuid
      ..vars.input.tid = todoItem.tid
      ..vars.input.status = todoItem.status
      ..vars.input.title = todoItem.title
      ..vars.input.priority = priorityToString[todoItem.priority]);
    //..vars.createtodolistinput.title = title);
    Stream<dynamic> events = _client.request(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.updateTodoList?.toJson();
        print('mutation: ${item}');
        return ToDoItem(
            tid: item['tid'],
            title: item['title'],
            status: item['status'],
            priority: stringToPriority[item['priority']]);
      } else {
        print('not found');
      }
    }
    return ToDoItem(tid: generateUUID(), title: "title", status: "status");
  }

  Future<ToDoItem> deleteTodo(String cuid, String tid) async {
    final request = GdeleteTodoListReq((b) => b
      ..vars.input.cuid = cuid
      ..vars.input.tid = tid);
    Stream<dynamic> events = _client.request(request);
    await for (dynamic event in events) {
      final data = event.data;
      if (data != null) {
        final item = data.deleteTodoList?.toJson();
        print('delete: ${item}');
        return ToDoItem(
            tid: item['tid'],
            title: item['title'],
            status: item['status'],
            priority: stringToPriority[item['priority']]);
      } else {
        print('not found');
      }
    }
    return ToDoItem(tid: generateUUID(), title: "title", status: "status");
  }
}
