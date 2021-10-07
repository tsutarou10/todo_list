// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:todo_list/graphql/__generated__/todo.query.ast.gql.dart' as _i5;
import 'package:todo_list/graphql/__generated__/todo.query.data.gql.dart'
    as _i2;
import 'package:todo_list/graphql/__generated__/todo.query.var.gql.dart' as _i3;

part 'todo.query.req.gql.g.dart';

abstract class GlistTodolistsReq
    implements
        Built<GlistTodolistsReq, GlistTodolistsReqBuilder>,
        _i1.OperationRequest<_i2.GlistTodolistsData, _i3.GlistTodolistsVars> {
  GlistTodolistsReq._();

  factory GlistTodolistsReq([Function(GlistTodolistsReqBuilder b) updates]) =
      _$GlistTodolistsReq;

  static void _initializeBuilder(GlistTodolistsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'listTodolists')
    ..executeOnListen = true;
  _i3.GlistTodolistsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GlistTodolistsData? Function(
      _i2.GlistTodolistsData?, _i2.GlistTodolistsData?)? get updateResult;
  _i2.GlistTodolistsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GlistTodolistsData? parseData(Map<String, dynamic> json) =>
      _i2.GlistTodolistsData.fromJson(json);
  static Serializer<GlistTodolistsReq> get serializer =>
      _$glistTodolistsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GlistTodolistsReq.serializer, this)
          as Map<String, dynamic>);
  static GlistTodolistsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GlistTodolistsReq.serializer, json);
}

abstract class GcreateTodolistReq
    implements
        Built<GcreateTodolistReq, GcreateTodolistReqBuilder>,
        _i1.OperationRequest<_i2.GcreateTodolistData, _i3.GcreateTodolistVars> {
  GcreateTodolistReq._();

  factory GcreateTodolistReq([Function(GcreateTodolistReqBuilder b) updates]) =
      _$GcreateTodolistReq;

  static void _initializeBuilder(GcreateTodolistReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'createTodolist')
    ..executeOnListen = true;
  _i3.GcreateTodolistVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GcreateTodolistData? Function(
      _i2.GcreateTodolistData?, _i2.GcreateTodolistData?)? get updateResult;
  _i2.GcreateTodolistData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GcreateTodolistData? parseData(Map<String, dynamic> json) =>
      _i2.GcreateTodolistData.fromJson(json);
  static Serializer<GcreateTodolistReq> get serializer =>
      _$gcreateTodolistReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GcreateTodolistReq.serializer, this)
          as Map<String, dynamic>);
  static GcreateTodolistReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GcreateTodolistReq.serializer, json);
}
