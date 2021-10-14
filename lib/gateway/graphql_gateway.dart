import 'package:todo_list/model/todo_model.dart';

abstract class GraphQLClientGateway {
  Stream<dynamic> doRequest(request);
}

abstract class GraphQLGateway {
  Future<ToDoItem> createTodo(String cuid, ToDoItem todoItem);
  Future<ToDoItem> updateTodo(String cuid, ToDoItem todoItem);
  Future<List<ToDoItem>> queryTodo(String status);
  Future<ToDoItem> deleteTodo(String cuid, String tid);
}
