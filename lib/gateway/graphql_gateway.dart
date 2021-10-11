import 'package:todo_list/model/todo_model.dart';

abstract class GraphQLGateway {
  void mutationTodo(String title, String memo, String status);
  Future<List<ToDoItem>> queryTodo(String status);
}
