// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_list/graphql/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCreateTodolistInput
    implements Built<GCreateTodolistInput, GCreateTodolistInputBuilder> {
  GCreateTodolistInput._();

  factory GCreateTodolistInput(
          [Function(GCreateTodolistInputBuilder b) updates]) =
      _$GCreateTodolistInput;

  int? get createdAt;
  String? get memo;
  String get title;
  static Serializer<GCreateTodolistInput> get serializer =>
      _$gCreateTodolistInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateTodolistInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateTodolistInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateTodolistInput.serializer, json);
}

abstract class GDeleteTodolistInput
    implements Built<GDeleteTodolistInput, GDeleteTodolistInputBuilder> {
  GDeleteTodolistInput._();

  factory GDeleteTodolistInput(
          [Function(GDeleteTodolistInputBuilder b) updates]) =
      _$GDeleteTodolistInput;

  String get id;
  static Serializer<GDeleteTodolistInput> get serializer =>
      _$gDeleteTodolistInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteTodolistInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteTodolistInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteTodolistInput.serializer, json);
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

abstract class GTableTodolistFilterInput
    implements
        Built<GTableTodolistFilterInput, GTableTodolistFilterInputBuilder> {
  GTableTodolistFilterInput._();

  factory GTableTodolistFilterInput(
          [Function(GTableTodolistFilterInputBuilder b) updates]) =
      _$GTableTodolistFilterInput;

  GTableIntFilterInput? get createdAt;
  GTableIDFilterInput? get id;
  GTableStringFilterInput? get memo;
  GTableStringFilterInput? get title;
  static Serializer<GTableTodolistFilterInput> get serializer =>
      _$gTableTodolistFilterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTableTodolistFilterInput.serializer, this)
          as Map<String, dynamic>);
  static GTableTodolistFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GTableTodolistFilterInput.serializer, json);
}

abstract class GUpdateTodolistInput
    implements Built<GUpdateTodolistInput, GUpdateTodolistInputBuilder> {
  GUpdateTodolistInput._();

  factory GUpdateTodolistInput(
          [Function(GUpdateTodolistInputBuilder b) updates]) =
      _$GUpdateTodolistInput;

  int? get createdAt;
  String get id;
  String? get memo;
  String? get title;
  static Serializer<GUpdateTodolistInput> get serializer =>
      _$gUpdateTodolistInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateTodolistInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateTodolistInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateTodolistInput.serializer, json);
}
