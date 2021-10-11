import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';
import 'package:todo_list/model/todo_model.dart';

class GraphQLApiClient implements GraphQLGateway {
  late final Client _client;
  GraphQLApiClient() {
    final link = HttpLink(
        'https://zrxgfst6nfgcze2i4qdjtxzwju.appsync-api.ap-northeast-1.amazonaws.com/graphql',
        defaultHeaders: <String, String> {
          'x-api-key': 'da2-2usaa6novfe2ndw6ackjqifk5e',
        },

    );
    this._client = Client(link: link);
  }

  Future<List<ToDoItem>> queryTodo(String status) async {
    List<ToDoItem> rsl = [];
    final request = GlistTodolistsReq(
        (b) => b
        ..vars.filter.status.eq = status);
    await _client.request(request).listen((event) async {
      final data = event.data;
      if(data != null && data.listTodolists != null) {
        final items = data.listTodolists?.toJson()['items'];
        print('before: ${items}');
        for(dynamic item in items) {
          rsl.add(ToDoItem(
                  item['title'],
                  item['status'],
          ));
        }
        print('after: ${rsl}');
      } else {
        print('not found');
      }
    });
    return rsl;
  }

  void mutationTodo(String title, String memo, String status) async {
    int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final hoge = GcreateTodolistReq(
        (b) => b
        ..vars.createtodolistinput.title = title
        ..vars.createtodolistinput.memo = memo 
        ..vars.createtodolistinput.createdAt = nowTime
        ..vars.createtodolistinput.status = status);
    _client.request(hoge).listen((event) {
      final data = event.data;
      if(data != null) {
        print('mutation: ${data.createTodolist}');
      } else {
        print('not found');
      }
    });
  }
}
