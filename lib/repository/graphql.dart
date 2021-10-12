import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart';
import 'package:todo_list/model/todo_model.dart';

final graphQLApiClientProvider = Provider((ref) => GraphQLApiClient());

class GraphQLApiClient implements GraphQLGateway {
  late final Client _client;
  GraphQLApiClient() {
    final link = HttpLink(
        'https://5bsiwahoarf2rlx72z74723hbm.appsync-api.ap-northeast-1.amazonaws.com/graphql',
        defaultHeaders: <String, String> {
          'x-api-key': 'da2-dlxgbzqovrbcni62hzq7x5uoqy',
        },

    );
    this._client = Client(link: link);
  }

  Future<List<ToDoItem>> queryTodo(String status) async {
    List<ToDoItem> rsl = [];
    final request = GlistTodoListsReq(
        (b) => b
        ..vars.filter.status.eq = status);

    Stream<dynamic> hoge = _client.request(request);
    await for(dynamic event in hoge) {
      print(event);
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

  void mutationTodo(String title, String memo, String status) async {
    int nowTime = (new DateTime.now().millisecondsSinceEpoch / 1000).floor();
    final hoge = GcreateTodoListReq(
        (b) => b
        ..vars.createtodolistinput.cuid = 'test cuid'
        ..vars.createtodolistinput.tid = 'test tid'
        ..vars.createtodolistinput.status = status);
    _client.request(hoge).listen((event) {
      final data = event.data;
      if(data != null) {
        print('mutation: ${data.createTodoList}');
      } else {
        print('not found');
      }
    });
  }
}
