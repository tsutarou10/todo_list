// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i1;

part 'todo.query.data.gql.g.dart';

abstract class GcreateTodoListData
    implements Built<GcreateTodoListData, GcreateTodoListDataBuilder> {
  GcreateTodoListData._();

  factory GcreateTodoListData(
      [Function(GcreateTodoListDataBuilder b) updates]) = _$GcreateTodoListData;

  static void _initializeBuilder(GcreateTodoListDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateTodoListData_createTodoList? get createTodoList;
  static Serializer<GcreateTodoListData> get serializer =>
      _$gcreateTodoListDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GcreateTodoListData.serializer, this)
          as Map<String, dynamic>);
  static GcreateTodoListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GcreateTodoListData.serializer, json);
}

abstract class GcreateTodoListData_createTodoList
    implements
        Built<GcreateTodoListData_createTodoList,
            GcreateTodoListData_createTodoListBuilder> {
  GcreateTodoListData_createTodoList._();

  factory GcreateTodoListData_createTodoList(
          [Function(GcreateTodoListData_createTodoListBuilder b) updates]) =
      _$GcreateTodoListData_createTodoList;

  static void _initializeBuilder(GcreateTodoListData_createTodoListBuilder b) =>
      b..G__typename = 'TodoList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get cuid;
  String get tid;
  static Serializer<GcreateTodoListData_createTodoList> get serializer =>
      _$gcreateTodoListDataCreateTodoListSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GcreateTodoListData_createTodoList.serializer, this)
      as Map<String, dynamic>);
  static GcreateTodoListData_createTodoList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GcreateTodoListData_createTodoList.serializer, json);
}

abstract class GlistTodoListsData
    implements Built<GlistTodoListsData, GlistTodoListsDataBuilder> {
  GlistTodoListsData._();

  factory GlistTodoListsData([Function(GlistTodoListsDataBuilder b) updates]) =
      _$GlistTodoListsData;

  static void _initializeBuilder(GlistTodoListsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GlistTodoListsData_listTodoLists? get listTodoLists;
  static Serializer<GlistTodoListsData> get serializer =>
      _$glistTodoListsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GlistTodoListsData.serializer, this)
          as Map<String, dynamic>);
  static GlistTodoListsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GlistTodoListsData.serializer, json);
}

abstract class GlistTodoListsData_listTodoLists
    implements
        Built<GlistTodoListsData_listTodoLists,
            GlistTodoListsData_listTodoListsBuilder> {
  GlistTodoListsData_listTodoLists._();

  factory GlistTodoListsData_listTodoLists(
          [Function(GlistTodoListsData_listTodoListsBuilder b) updates]) =
      _$GlistTodoListsData_listTodoLists;

  static void _initializeBuilder(GlistTodoListsData_listTodoListsBuilder b) =>
      b..G__typename = 'TodoListConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GlistTodoListsData_listTodoLists_items>? get items;
  static Serializer<GlistTodoListsData_listTodoLists> get serializer =>
      _$glistTodoListsDataListTodoListsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GlistTodoListsData_listTodoLists.serializer, this)
      as Map<String, dynamic>);
  static GlistTodoListsData_listTodoLists? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GlistTodoListsData_listTodoLists.serializer, json);
}

abstract class GlistTodoListsData_listTodoLists_items
    implements
        Built<GlistTodoListsData_listTodoLists_items,
            GlistTodoListsData_listTodoLists_itemsBuilder> {
  GlistTodoListsData_listTodoLists_items._();

  factory GlistTodoListsData_listTodoLists_items(
          [Function(GlistTodoListsData_listTodoLists_itemsBuilder b) updates]) =
      _$GlistTodoListsData_listTodoLists_items;

  static void _initializeBuilder(
          GlistTodoListsData_listTodoLists_itemsBuilder b) =>
      b..G__typename = 'TodoList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get cuid;
  String get tid;
  String get title;
  String? get status;
  static Serializer<GlistTodoListsData_listTodoLists_items> get serializer =>
      _$glistTodoListsDataListTodoListsItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GlistTodoListsData_listTodoLists_items.serializer, this)
      as Map<String, dynamic>);
  static GlistTodoListsData_listTodoLists_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GlistTodoListsData_listTodoLists_items.serializer, json);
}
