import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/view_model/user_view_model.dart';

final graphQLApiClientProvider = Provider((ref) => GraphQLApiClient());

class GraphQLApiClient implements GraphQLGateway {
  int id = 8;
  late final Client _client;
  GraphQLApiClient() {
    final link = HttpLink(
        'https://jysbajoanvatjmvixye73inwse.appsync-api.ap-northeast-1.amazonaws.com/graphql',
        defaultHeaders: <String, String> {
          'x-api-key': 'da2-p4ehmits3vh2dbw24mdvp7eal4',
        },

    );
    this._client = Client(link: link);
  }

  Future<List<ToDoItem>> queryTodo(String status) async {
    List<ToDoItem> rsl = [];
    final request = GlistTodoListsReq(
        (b) => b
        ..vars.filter.status.eq = status);

    Stream<dynamic> events = _client.request(request);
    await for(dynamic event in events) {
      final data = event.data;
      if(data != null && data.listTodoLists != null) {
        final items = data.listTodoLists?.toJson()['items'];
        print('before: ${items}');
        for(dynamic item in items) {
          rsl.add(ToDoItem(
                  item['title'],
                  item['status'],
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

  Future<ToDoItem> createTodo(String cuid, String title, String memo, String status) async {
    int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final request = GcreateTodoListReq(
        (b) => b
        ..vars.createtodolistinput.cuid = 'test cuid'
        ..vars.createtodolistinput.tid = 'test tid_' + id.toString()
        ..vars.createtodolistinput.status = status
        ..vars.createtodolistinput.title = 'hoge title_' + id.toString());
        //..vars.createtodolistinput.title = title);
    id++;
    Stream<dynamic> hoge = _client.request(request);
    await for(dynamic event in hoge) {
      final data = event.data;
      if(data != null) {
        final item = data.createTodoList?.toJson();
        print('mutation: ${item}');
        return ToDoItem(item['title'], item['status']);
      } else {
        print('not found');
      }
    }
    return ToDoItem("title", "status");
  }
}
