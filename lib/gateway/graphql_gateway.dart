import 'package:todo_list/model/todo_model.dart';

abstract class GraphQLGateway {
  Future<ToDoItem> createTodo(String cuid, String title, String memo, String status, Priority priority);
  Future<ToDoItem> updateTodo(String cuid, String tid, String title, String memo, String status, Priority priority);
  Future<List<ToDoItem>> queryTodo(String status);
  Future<ToDoItem> deleteTodo(String cuid, String tid);
}
