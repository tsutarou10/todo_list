// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_list/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i2;

part 'todo.query.var.gql.g.dart';

abstract class GcreateTodoListVars
    implements Built<GcreateTodoListVars, GcreateTodoListVarsBuilder> {
  GcreateTodoListVars._();

  factory GcreateTodoListVars(
      [Function(GcreateTodoListVarsBuilder b) updates]) = _$GcreateTodoListVars;

  _i1.GCreateTodoListInput get createtodolistinput;
  static Serializer<GcreateTodoListVars> get serializer =>
      _$gcreateTodoListVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GcreateTodoListVars.serializer, this)
          as Map<String, dynamic>);
  static GcreateTodoListVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GcreateTodoListVars.serializer, json);
}

abstract class GlistTodoListsVars
    implements Built<GlistTodoListsVars, GlistTodoListsVarsBuilder> {
  GlistTodoListsVars._();

  factory GlistTodoListsVars([Function(GlistTodoListsVarsBuilder b) updates]) =
      _$GlistTodoListsVars;

  _i1.GTableTodoListFilterInput get filter;
  static Serializer<GlistTodoListsVars> get serializer =>
      _$glistTodoListsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GlistTodoListsVars.serializer, this)
          as Map<String, dynamic>);
  static GlistTodoListsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GlistTodoListsVars.serializer, json);
}
