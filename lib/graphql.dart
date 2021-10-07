import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:todo_list/graphql/__generated__/schema.schema.gql.dart';
import 'package:todo_list/graphql/__generated__/todo.query.ast.gql.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';

class GraphQLApiClient {
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

  void listenEmployees() async {
    int time = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final hoge = GcreateTodolistReq(
        (b) => b
        ..vars.createtodolistinput.title = 'title from flutter'
        ..vars.createtodolistinput.memo = 'memo from flutter'
        ..vars.createtodolistinput.createdAt = time);
    final request = GlistTodolistsReq(
        (b) => b
        ..vars.filter.title.eq = "title from golang");
    _client.request(request).listen((event) {
      final data = event.data;
      if(data != null) {
        print('query: ${data.listTodolists}');
      } else {
        print('not found');
      }
    });
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
