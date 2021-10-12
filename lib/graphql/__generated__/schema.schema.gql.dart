// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCreateTodoListInput
    implements Built<GCreateTodoListInput, GCreateTodoListInputBuilder> {
  GCreateTodoListInput._();

  factory GCreateTodoListInput(
          [Function(GCreateTodoListInputBuilder b) updates]) =
      _$GCreateTodoListInput;

  String get cuid;
  String? get status;
  String get tid;
  String? get title;
  static Serializer<GCreateTodoListInput> get serializer =>
      _$gCreateTodoListInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateTodoListInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateTodoListInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateTodoListInput.serializer, json);
}

abstract class GDeleteTodoListInput
    implements Built<GDeleteTodoListInput, GDeleteTodoListInputBuilder> {
  GDeleteTodoListInput._();

  factory GDeleteTodoListInput(
          [Function(GDeleteTodoListInputBuilder b) updates]) =
      _$GDeleteTodoListInput;

  String get cuid;
  String get tid;
  static Serializer<GDeleteTodoListInput> get serializer =>
      _$gDeleteTodoListInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteTodoListInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteTodoListInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteTodoListInput.serializer, json);
}

abstract class GTableBooleanFilterInput
    implements
        Built<GTableBooleanFilterInput, GTableBooleanFilterInputBuilder> {
  GTableBooleanFilterInput._();

  factory GTableBooleanFilterInput(
          [Function(GTableBooleanFilterInputBuilder b) updates]) =
      _$GTableBooleanFilterInput;

  bool? get eq;
  bool? get ne;
  static Serializer<GTableBooleanFilterInput> get serializer =>
      _$gTableBooleanFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableBooleanFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableBooleanFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GTableBooleanFilterInput.serializer, json);
}

abstract class GTableFloatFilterInput
    implements Built<GTableFloatFilterInput, GTableFloatFilterInputBuilder> {
  GTableFloatFilterInput._();

  factory GTableFloatFilterInput(
          [Function(GTableFloatFilterInputBuilder b) updates]) =
      _$GTableFloatFilterInput;

  BuiltList<double>? get between;
  double? get contains;
  double? get eq;
  double? get ge;
  double? get gt;
  double? get le;
  double? get lt;
  double? get ne;
  double? get notContains;
  static Serializer<GTableFloatFilterInput> get serializer =>
      _$gTableFloatFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableFloatFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableFloatFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GTableFloatFilterInput.serializer, json);
}

abstract class GTableIDFilterInput
    implements Built<GTableIDFilterInput, GTableIDFilterInputBuilder> {
  GTableIDFilterInput._();

  factory GTableIDFilterInput(
      [Function(GTableIDFilterInputBuilder b) updates]) = _$GTableIDFilterInput;

  String? get beginsWith;
  BuiltList<String>? get between;
  String? get contains;
  String? get eq;
  String? get ge;
  String? get gt;
  String? get le;
  String? get lt;
  String? get ne;
  String? get notContains;
  static Serializer<GTableIDFilterInput> get serializer =>
      _$gTableIDFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableIDFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableIDFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GTableIDFilterInput.serializer, json);
}

abstract class GTableIntFilterInput
    implements Built<GTableIntFilterInput, GTableIntFilterInputBuilder> {
  GTableIntFilterInput._();

  factory GTableIntFilterInput(
          [Function(GTableIntFilterInputBuilder b) updates]) =
      _$GTableIntFilterInput;

  BuiltList<int>? get between;
  int? get contains;
  int? get eq;
  int? get ge;
  int? get gt;
  int? get le;
  int? get lt;
  int? get ne;
  int? get notContains;
  static Serializer<GTableIntFilterInput> get serializer =>
      _$gTableIntFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableIntFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableIntFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GTableIntFilterInput.serializer, json);
}

abstract class GTableStringFilterInput
    implements Built<GTableStringFilterInput, GTableStringFilterInputBuilder> {
  GTableStringFilterInput._();

  factory GTableStringFilterInput(
          [Function(GTableStringFilterInputBuilder b) updates]) =
      _$GTableStringFilterInput;

  String? get beginsWith;
  BuiltList<String>? get between;
  String? get contains;
  String? get eq;
  String? get ge;
  String? get gt;
  String? get le;
  String? get lt;
  String? get ne;
  String? get notContains;
  static Serializer<GTableStringFilterInput> get serializer =>
      _$gTableStringFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableStringFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableStringFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GTableStringFilterInput.serializer, json);
}

abstract class GTableTodoListFilterInput
    implements
        Built<GTableTodoListFilterInput, GTableTodoListFilterInputBuilder> {
  GTableTodoListFilterInput._();

  factory GTableTodoListFilterInput(
          [Function(GTableTodoListFilterInputBuilder b) updates]) =
      _$GTableTodoListFilterInput;

  GTableStringFilterInput? get cuid;
  GTableStringFilterInput? get status;
  GTableStringFilterInput? get tid;
  GTableStringFilterInput? get title;
  static Serializer<GTableTodoListFilterInput> get serializer =>
      _$gTableTodoListFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableTodoListFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableTodoListFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GTableTodoListFilterInput.serializer, json);
}

abstract class GUpdateTodoListInput
    implements Built<GUpdateTodoListInput, GUpdateTodoListInputBuilder> {
  GUpdateTodoListInput._();

  factory GUpdateTodoListInput(
          [Function(GUpdateTodoListInputBuilder b) updates]) =
      _$GUpdateTodoListInput;

  String get cuid;
  String? get status;
  String get tid;
  String? get title;
  static Serializer<GUpdateTodoListInput> get serializer =>
      _$gUpdateTodoListInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateTodoListInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateTodoListInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateTodoListInput.serializer, json);
}
