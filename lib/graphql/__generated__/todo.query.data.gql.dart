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
  String? get title;
  String? get status;
  String get priority;
  int get sortID;
  String? get memo;
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
  String? get title;
  String? get status;
  String get priority;
  int get sortID;
  String? get memo;
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

abstract class GdeleteTodoListData
    implements Built<GdeleteTodoListData, GdeleteTodoListDataBuilder> {
  GdeleteTodoListData._();

  factory GdeleteTodoListData(
      [Function(GdeleteTodoListDataBuilder b) updates]) = _$GdeleteTodoListData;

  static void _initializeBuilder(GdeleteTodoListDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GdeleteTodoListData_deleteTodoList? get deleteTodoList;
  static Serializer<GdeleteTodoListData> get serializer =>
      _$gdeleteTodoListDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GdeleteTodoListData.serializer, this)
          as Map<String, dynamic>);
  static GdeleteTodoListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GdeleteTodoListData.serializer, json);
}

abstract class GdeleteTodoListData_deleteTodoList
    implements
        Built<GdeleteTodoListData_deleteTodoList,
            GdeleteTodoListData_deleteTodoListBuilder> {
  GdeleteTodoListData_deleteTodoList._();

  factory GdeleteTodoListData_deleteTodoList(
          [Function(GdeleteTodoListData_deleteTodoListBuilder b) updates]) =
      _$GdeleteTodoListData_deleteTodoList;

  static void _initializeBuilder(GdeleteTodoListData_deleteTodoListBuilder b) =>
      b..G__typename = 'TodoList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get cuid;
  String? get memo;
  String get priority;
  String? get status;
  String get tid;
  String? get title;
  int get sortID;
  static Serializer<GdeleteTodoListData_deleteTodoList> get serializer =>
      _$gdeleteTodoListDataDeleteTodoListSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GdeleteTodoListData_deleteTodoList.serializer, this)
      as Map<String, dynamic>);
  static GdeleteTodoListData_deleteTodoList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GdeleteTodoListData_deleteTodoList.serializer, json);
}

abstract class GupdateTodoListData
    implements Built<GupdateTodoListData, GupdateTodoListDataBuilder> {
  GupdateTodoListData._();

  factory GupdateTodoListData(
      [Function(GupdateTodoListDataBuilder b) updates]) = _$GupdateTodoListData;

  static void _initializeBuilder(GupdateTodoListDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateTodoListData_updateTodoList? get updateTodoList;
  static Serializer<GupdateTodoListData> get serializer =>
      _$gupdateTodoListDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GupdateTodoListData.serializer, this)
          as Map<String, dynamic>);
  static GupdateTodoListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GupdateTodoListData.serializer, json);
}

abstract class GupdateTodoListData_updateTodoList
    implements
        Built<GupdateTodoListData_updateTodoList,
            GupdateTodoListData_updateTodoListBuilder> {
  GupdateTodoListData_updateTodoList._();

  factory GupdateTodoListData_updateTodoList(
          [Function(GupdateTodoListData_updateTodoListBuilder b) updates]) =
      _$GupdateTodoListData_updateTodoList;

  static void _initializeBuilder(GupdateTodoListData_updateTodoListBuilder b) =>
      b..G__typename = 'TodoList';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get cuid;
  String? get memo;
  String get priority;
  String? get status;
  String get tid;
  String? get title;
  int get sortID;
  static Serializer<GupdateTodoListData_updateTodoList> get serializer =>
      _$gupdateTodoListDataUpdateTodoListSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GupdateTodoListData_updateTodoList.serializer, this)
      as Map<String, dynamic>);
  static GupdateTodoListData_updateTodoList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GupdateTodoListData_updateTodoList.serializer, json);
}
