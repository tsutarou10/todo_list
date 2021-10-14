import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:todo_list/gateway/graphql_gateway.dart';

class GraphQLClientRepository implements GraphQLClientGateway {
  late final Client _client;
  GraphQLClientRepository() {
    final link = HttpLink(
      const String.fromEnvironment('APPSYNC_URL'),
      defaultHeaders: <String, String>{
        'x-api-key': const String.fromEnvironment('APPSYNC_API_KEY'),
      },
    );
    _client = Client(link: link);
  }

  @override
  Stream<dynamic> doRequest(request) {
    return _client.request(request);
  }
}
