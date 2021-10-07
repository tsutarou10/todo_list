import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:todo_list/graphql/__generated__/schema.schema.gql.dart'
    show
        GCreateTodolistInput,
        GDeleteTodolistInput,
        GTableBooleanFilterInput,
        GTableFloatFilterInput,
        GTableIDFilterInput,
        GTableIntFilterInput,
        GTableStringFilterInput,
        GTableTodolistFilterInput,
        GUpdateTodolistInput;
import 'package:todo_list/graphql/__generated__/todo.query.data.gql.dart'
    show
        GcreateTodolistData,
        GcreateTodolistData_createTodolist,
        GlistTodolistsData,
        GlistTodolistsData_listTodolists,
        GlistTodolistsData_listTodolists_items;
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart'
    show GcreateTodolistReq, GlistTodolistsReq;
import 'package:todo_list/graphql/__generated__/todo.query.var.gql.dart'
    show GcreateTodolistVars, GlistTodolistsVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateTodolistInput,
  GDeleteTodolistInput,
  GTableBooleanFilterInput,
  GTableFloatFilterInput,
  GTableIDFilterInput,
  GTableIntFilterInput,
  GTableStringFilterInput,
  GTableTodolistFilterInput,
  GUpdateTodolistInput,
  GcreateTodolistData,
  GcreateTodolistData_createTodolist,
  GcreateTodolistReq,
  GcreateTodolistVars,
  GlistTodolistsData,
  GlistTodolistsData_listTodolists,
  GlistTodolistsData_listTodolists_items,
  GlistTodolistsReq,
  GlistTodolistsVars
])
final Serializers serializers = _serializersBuilder.build();
