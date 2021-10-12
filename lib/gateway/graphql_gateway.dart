import 'package:todo_list/model/todo_model.dart';

abstract class GraphQLGateway {
  Future<ToDoItem> createTodo(String cuid, String title, String memo, String status);
  Future<List<ToDoItem>> queryTodo(String status);
}
