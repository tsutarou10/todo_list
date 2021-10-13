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

abstract class GcreateTodoListReq
    implements
        Built<GcreateTodoListReq, GcreateTodoListReqBuilder>,
        _i1.OperationRequest<_i2.GcreateTodoListData, _i3.GcreateTodoListVars> {
  GcreateTodoListReq._();

  factory GcreateTodoListReq([Function(GcreateTodoListReqBuilder b) updates]) =
      _$GcreateTodoListReq;

  static void _initializeBuilder(GcreateTodoListReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'createTodoList')
    ..executeOnListen = true;
  _i3.GcreateTodoListVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GcreateTodoListData? Function(
      _i2.GcreateTodoListData?, _i2.GcreateTodoListData?)? get updateResult;
  _i2.GcreateTodoListData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GcreateTodoListData? parseData(Map<String, dynamic> json) =>
      _i2.GcreateTodoListData.fromJson(json);
  static Serializer<GcreateTodoListReq> get serializer =>
      _$gcreateTodoListReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GcreateTodoListReq.serializer, this)
          as Map<String, dynamic>);
  static GcreateTodoListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GcreateTodoListReq.serializer, json);
}

abstract class GlistTodoListsReq
    implements
        Built<GlistTodoListsReq, GlistTodoListsReqBuilder>,
        _i1.OperationRequest<_i2.GlistTodoListsData, _i3.GlistTodoListsVars> {
  GlistTodoListsReq._();

  factory GlistTodoListsReq([Function(GlistTodoListsReqBuilder b) updates]) =
      _$GlistTodoListsReq;

  static void _initializeBuilder(GlistTodoListsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'listTodoLists')
    ..executeOnListen = true;
  _i3.GlistTodoListsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GlistTodoListsData? Function(
      _i2.GlistTodoListsData?, _i2.GlistTodoListsData?)? get updateResult;
  _i2.GlistTodoListsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GlistTodoListsData? parseData(Map<String, dynamic> json) =>
      _i2.GlistTodoListsData.fromJson(json);
  static Serializer<GlistTodoListsReq> get serializer =>
      _$glistTodoListsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GlistTodoListsReq.serializer, this)
          as Map<String, dynamic>);
  static GlistTodoListsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GlistTodoListsReq.serializer, json);
}

abstract class GdeleteTodoListReq
    implements
        Built<GdeleteTodoListReq, GdeleteTodoListReqBuilder>,
        _i1.OperationRequest<_i2.GdeleteTodoListData, _i3.GdeleteTodoListVars> {
  GdeleteTodoListReq._();

  factory GdeleteTodoListReq([Function(GdeleteTodoListReqBuilder b) updates]) =
      _$GdeleteTodoListReq;

  static void _initializeBuilder(GdeleteTodoListReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'deleteTodoList')
    ..executeOnListen = true;
  _i3.GdeleteTodoListVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GdeleteTodoListData? Function(
      _i2.GdeleteTodoListData?, _i2.GdeleteTodoListData?)? get updateResult;
  _i2.GdeleteTodoListData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GdeleteTodoListData? parseData(Map<String, dynamic> json) =>
      _i2.GdeleteTodoListData.fromJson(json);
  static Serializer<GdeleteTodoListReq> get serializer =>
      _$gdeleteTodoListReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GdeleteTodoListReq.serializer, this)
          as Map<String, dynamic>);
  static GdeleteTodoListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GdeleteTodoListReq.serializer, json);
}

abstract class GupdateTodoListReq
    implements
        Built<GupdateTodoListReq, GupdateTodoListReqBuilder>,
        _i1.OperationRequest<_i2.GupdateTodoListData, _i3.GupdateTodoListVars> {
  GupdateTodoListReq._();

  factory GupdateTodoListReq([Function(GupdateTodoListReqBuilder b) updates]) =
      _$GupdateTodoListReq;

  static void _initializeBuilder(GupdateTodoListReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'updateTodoList')
    ..executeOnListen = true;
  _i3.GupdateTodoListVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GupdateTodoListData? Function(
      _i2.GupdateTodoListData?, _i2.GupdateTodoListData?)? get updateResult;
  _i2.GupdateTodoListData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GupdateTodoListData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateTodoListData.fromJson(json);
  static Serializer<GupdateTodoListReq> get serializer =>
      _$gupdateTodoListReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GupdateTodoListReq.serializer, this)
          as Map<String, dynamic>);
  static GupdateTodoListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GupdateTodoListReq.serializer, json);
}
