// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_list/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i2;

part 'todo.query.var.gql.g.dart';

abstract class GlistTodolistsVars
    implements Built<GlistTodolistsVars, GlistTodolistsVarsBuilder> {
  GlistTodolistsVars._();

  factory GlistTodolistsVars([Function(GlistTodolistsVarsBuilder b) updates]) =
      _$GlistTodolistsVars;

  _i1.GTableTodolistFilterInput? get filter;
  static Serializer<GlistTodolistsVars> get serializer =>
      _$glistTodolistsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GlistTodolistsVars.serializer, this)
          as Map<String, dynamic>);
  static GlistTodolistsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GlistTodolistsVars.serializer, json);
}

abstract class GcreateTodolistVars
    implements Built<GcreateTodolistVars, GcreateTodolistVarsBuilder> {
  GcreateTodolistVars._();

  factory GcreateTodolistVars(
      [Function(GcreateTodolistVarsBuilder b) updates]) = _$GcreateTodolistVars;

  _i1.GCreateTodolistInput get createtodolistinput;
  static Serializer<GcreateTodolistVars> get serializer =>
      _$gcreateTodolistVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GcreateTodolistVars.serializer, this)
          as Map<String, dynamic>);
  static GcreateTodolistVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GcreateTodolistVars.serializer, json);
}
