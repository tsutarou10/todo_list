// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i1;

part 'todo.query.data.gql.g.dart';

abstract class GlistTodolistsData
    implements Built<GlistTodolistsData, GlistTodolistsDataBuilder> {
  GlistTodolistsData._();

  factory GlistTodolistsData([Function(GlistTodolistsDataBuilder b) updates]) =
      _$GlistTodolistsData;

  static void _initializeBuilder(GlistTodolistsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GlistTodolistsData_listTodolists? get listTodolists;
  static Serializer<GlistTodolistsData> get serializer =>
      _$glistTodolistsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GlistTodolistsData.serializer, this)
          as Map<String, dynamic>);
  static GlistTodolistsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GlistTodolistsData.serializer, json);
}

abstract class GlistTodolistsData_listTodolists
    implements
        Built<GlistTodolistsData_listTodolists,
            GlistTodolistsData_listTodolistsBuilder> {
  GlistTodolistsData_listTodolists._();

  factory GlistTodolistsData_listTodolists(
          [Function(GlistTodolistsData_listTodolistsBuilder b) updates]) =
      _$GlistTodolistsData_listTodolists;

  static void _initializeBuilder(GlistTodolistsData_listTodolistsBuilder b) =>
      b..G__typename = 'todolistConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GlistTodolistsData_listTodolists_items>? get items;
  static Serializer<GlistTodolistsData_listTodolists> get serializer =>
      _$glistTodolistsDataListTodolistsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GlistTodolistsData_listTodolists.serializer, this)
      as Map<String, dynamic>);
  static GlistTodolistsData_listTodolists? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GlistTodolistsData_listTodolists.serializer, json);
}

abstract class GlistTodolistsData_listTodolists_items
    implements
        Built<GlistTodolistsData_listTodolists_items,
            GlistTodolistsData_listTodolists_itemsBuilder> {
  GlistTodolistsData_listTodolists_items._();

  factory GlistTodolistsData_listTodolists_items(
          [Function(GlistTodolistsData_listTodolists_itemsBuilder b) updates]) =
      _$GlistTodolistsData_listTodolists_items;

  static void _initializeBuilder(
          GlistTodolistsData_listTodolists_itemsBuilder b) =>
      b..G__typename = 'todolist';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get createdAt;
  String get id;
  String? get memo;
  String get title;
  static Serializer<GlistTodolistsData_listTodolists_items> get serializer =>
      _$glistTodolistsDataListTodolistsItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GlistTodolistsData_listTodolists_items.serializer, this)
      as Map<String, dynamic>);
  static GlistTodolistsData_listTodolists_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GlistTodolistsData_listTodolists_items.serializer, json);
}

abstract class GcreateTodolistData
    implements Built<GcreateTodolistData, GcreateTodolistDataBuilder> {
  GcreateTodolistData._();

  factory GcreateTodolistData(
      [Function(GcreateTodolistDataBuilder b) updates]) = _$GcreateTodolistData;

  static void _initializeBuilder(GcreateTodolistDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateTodolistData_createTodolist? get createTodolist;
  static Serializer<GcreateTodolistData> get serializer =>
      _$gcreateTodolistDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GcreateTodolistData.serializer, this)
          as Map<String, dynamic>);
  static GcreateTodolistData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GcreateTodolistData.serializer, json);
}

abstract class GcreateTodolistData_createTodolist
    implements
        Built<GcreateTodolistData_createTodolist,
            GcreateTodolistData_createTodolistBuilder> {
  GcreateTodolistData_createTodolist._();

  factory GcreateTodolistData_createTodolist(
          [Function(GcreateTodolistData_createTodolistBuilder b) updates]) =
      _$GcreateTodolistData_createTodolist;

  static void _initializeBuilder(GcreateTodolistData_createTodolistBuilder b) =>
      b..G__typename = 'todolist';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get title;
  String? get memo;
  int? get createdAt;
  static Serializer<GcreateTodolistData_createTodolist> get serializer =>
      _$gcreateTodolistDataCreateTodolistSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GcreateTodolistData_createTodolist.serializer, this)
      as Map<String, dynamic>);
  static GcreateTodolistData_createTodolist? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GcreateTodolistData_createTodolist.serializer, json);
}
