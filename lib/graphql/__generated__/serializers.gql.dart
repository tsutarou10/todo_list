import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:todo_list/graphql/__generated__/schema.schema.gql.dart'
    show
        GCreateTodoListInput,
        GDeleteTodoListInput,
        GTableBooleanFilterInput,
        GTableFloatFilterInput,
        GTableIDFilterInput,
        GTableIntFilterInput,
        GTableStringFilterInput,
        GTableTodoListFilterInput,
        GUpdateTodoListInput;
import 'package:todo_list/graphql/__generated__/todo.query.data.gql.dart'
    show
        GcreateTodoListData,
        GcreateTodoListData_createTodoList,
        GdeleteTodoListData,
        GdeleteTodoListData_deleteTodoList,
        GlistTodoListsData,
        GlistTodoListsData_listTodoLists,
        GlistTodoListsData_listTodoLists_items;
import 'package:todo_list/graphql/__generated__/todo.query.req.gql.dart'
    show GcreateTodoListReq, GdeleteTodoListReq, GlistTodoListsReq;
import 'package:todo_list/graphql/__generated__/todo.query.var.gql.dart'
    show GcreateTodoListVars, GdeleteTodoListVars, GlistTodoListsVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateTodoListInput,
  GDeleteTodoListInput,
  GTableBooleanFilterInput,
  GTableFloatFilterInput,
  GTableIDFilterInput,
  GTableIntFilterInput,
  GTableStringFilterInput,
  GTableTodoListFilterInput,
  GUpdateTodoListInput,
  GcreateTodoListData,
  GcreateTodoListData_createTodoList,
  GcreateTodoListReq,
  GcreateTodoListVars,
  GdeleteTodoListData,
  GdeleteTodoListData_deleteTodoList,
  GdeleteTodoListReq,
  GdeleteTodoListVars,
  GlistTodoListsData,
  GlistTodoListsData_listTodoLists,
  GlistTodoListsData_listTodoLists_items,
  GlistTodoListsReq,
  GlistTodoListsVars
])
final Serializers serializers = _serializersBuilder.build();
