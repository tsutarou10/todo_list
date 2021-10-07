// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateTodolistInput> _$gCreateTodolistInputSerializer =
    new _$GCreateTodolistInputSerializer();
Serializer<GDeleteTodolistInput> _$gDeleteTodolistInputSerializer =
    new _$GDeleteTodolistInputSerializer();
Serializer<GTableBooleanFilterInput> _$gTableBooleanFilterInputSerializer =
    new _$GTableBooleanFilterInputSerializer();
Serializer<GTableFloatFilterInput> _$gTableFloatFilterInputSerializer =
    new _$GTableFloatFilterInputSerializer();
Serializer<GTableIDFilterInput> _$gTableIDFilterInputSerializer =
    new _$GTableIDFilterInputSerializer();
Serializer<GTableIntFilterInput> _$gTableIntFilterInputSerializer =
    new _$GTableIntFilterInputSerializer();
Serializer<GTableStringFilterInput> _$gTableStringFilterInputSerializer =
    new _$GTableStringFilterInputSerializer();
Serializer<GTableTodolistFilterInput> _$gTableTodolistFilterInputSerializer =
    new _$GTableTodolistFilterInputSerializer();
Serializer<GUpdateTodolistInput> _$gUpdateTodolistInputSerializer =
    new _$GUpdateTodolistInputSerializer();

class _$GCreateTodolistInputSerializer
    implements StructuredSerializer<GCreateTodolistInput> {
  @override
  final Iterable<Type> types = const [
    GCreateTodolistInput,
    _$GCreateTodolistInput
  ];
  @override
  final String wireName = 'GCreateTodolistInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateTodolistInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.memo;
    if (value != null) {
      result
        ..add('memo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateTodolistInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateTodolistInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteTodolistInputSerializer
    implements StructuredSerializer<GDeleteTodolistInput> {
  @override
  final Iterable<Type> types = const [
    GDeleteTodolistInput,
    _$GDeleteTodolistInput
  ];
  @override
  final String wireName = 'GDeleteTodolistInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteTodolistInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteTodolistInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteTodolistInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GTableBooleanFilterInputSerializer
    implements StructuredSerializer<GTableBooleanFilterInput> {
  @override
  final Iterable<Type> types = const [
    GTableBooleanFilterInput,
    _$GTableBooleanFilterInput
  ];
  @override
  final String wireName = 'GTableBooleanFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTableBooleanFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GTableBooleanFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTableBooleanFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTableFloatFilterInputSerializer
    implements StructuredSerializer<GTableFloatFilterInput> {
  @override
  final Iterable<Type> types = const [
    GTableFloatFilterInput,
    _$GTableFloatFilterInput
  ];
  @override
  final String wireName = 'GTableFloatFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTableFloatFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.notContains;
    if (value != null) {
      result
        ..add('notContains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GTableFloatFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTableFloatFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'notContains':
          result.notContains = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTableIDFilterInputSerializer
    implements StructuredSerializer<GTableIDFilterInput> {
  @override
  final Iterable<Type> types = const [
    GTableIDFilterInput,
    _$GTableIDFilterInput
  ];
  @override
  final String wireName = 'GTableIDFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTableIDFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.beginsWith;
    if (value != null) {
      result
        ..add('beginsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notContains;
    if (value != null) {
      result
        ..add('notContains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GTableIDFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTableIDFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'beginsWith':
          result.beginsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notContains':
          result.notContains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTableIntFilterInputSerializer
    implements StructuredSerializer<GTableIntFilterInput> {
  @override
  final Iterable<Type> types = const [
    GTableIntFilterInput,
    _$GTableIntFilterInput
  ];
  @override
  final String wireName = 'GTableIntFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTableIntFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.notContains;
    if (value != null) {
      result
        ..add('notContains')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GTableIntFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTableIntFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'notContains':
          result.notContains = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTableStringFilterInputSerializer
    implements StructuredSerializer<GTableStringFilterInput> {
  @override
  final Iterable<Type> types = const [
    GTableStringFilterInput,
    _$GTableStringFilterInput
  ];
  @override
  final String wireName = 'GTableStringFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTableStringFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.beginsWith;
    if (value != null) {
      result
        ..add('beginsWith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.between;
    if (value != null) {
      result
        ..add('between')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.contains;
    if (value != null) {
      result
        ..add('contains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eq;
    if (value != null) {
      result
        ..add('eq')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ge;
    if (value != null) {
      result
        ..add('ge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gt;
    if (value != null) {
      result
        ..add('gt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.le;
    if (value != null) {
      result
        ..add('le')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lt;
    if (value != null) {
      result
        ..add('lt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ne;
    if (value != null) {
      result
        ..add('ne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notContains;
    if (value != null) {
      result
        ..add('notContains')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GTableStringFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTableStringFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'beginsWith':
          result.beginsWith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'between':
          result.between.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'contains':
          result.contains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eq':
          result.eq = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ge':
          result.ge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gt':
          result.gt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'le':
          result.le = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lt':
          result.lt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ne':
          result.ne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notContains':
          result.notContains = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GTableTodolistFilterInputSerializer
    implements StructuredSerializer<GTableTodolistFilterInput> {
  @override
  final Iterable<Type> types = const [
    GTableTodolistFilterInput,
    _$GTableTodolistFilterInput
  ];
  @override
  final String wireName = 'GTableTodolistFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTableTodolistFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GTableIntFilterInput)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GTableIDFilterInput)));
    }
    value = object.memo;
    if (value != null) {
      result
        ..add('memo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GTableStringFilterInput)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GTableStringFilterInput)));
    }
    return result;
  }

  @override
  GTableTodolistFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTableTodolistFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GTableIntFilterInput))!
              as GTableIntFilterInput);
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GTableIDFilterInput))!
              as GTableIDFilterInput);
          break;
        case 'memo':
          result.memo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GTableStringFilterInput))!
              as GTableStringFilterInput);
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GTableStringFilterInput))!
              as GTableStringFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateTodolistInputSerializer
    implements StructuredSerializer<GUpdateTodolistInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateTodolistInput,
    _$GUpdateTodolistInput
  ];
  @override
  final String wireName = 'GUpdateTodolistInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateTodolistInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.memo;
    if (value != null) {
      result
        ..add('memo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateTodolistInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateTodolistInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateTodolistInput extends GCreateTodolistInput {
  @override
  final int? createdAt;
  @override
  final String? memo;
  @override
  final String title;

  factory _$GCreateTodolistInput(
          [void Function(GCreateTodolistInputBuilder)? updates]) =>
      (new GCreateTodolistInputBuilder()..update(updates)).build();

  _$GCreateTodolistInput._({this.createdAt, this.memo, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, 'GCreateTodolistInput', 'title');
  }

  @override
  GCreateTodolistInput rebuild(
          void Function(GCreateTodolistInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateTodolistInputBuilder toBuilder() =>
      new GCreateTodolistInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateTodolistInput &&
        createdAt == other.createdAt &&
        memo == other.memo &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, createdAt.hashCode), memo.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateTodolistInput')
          ..add('createdAt', createdAt)
          ..add('memo', memo)
          ..add('title', title))
        .toString();
  }
}

class GCreateTodolistInputBuilder
    implements Builder<GCreateTodolistInput, GCreateTodolistInputBuilder> {
  _$GCreateTodolistInput? _$v;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GCreateTodolistInputBuilder();

  GCreateTodolistInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _memo = $v.memo;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateTodolistInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateTodolistInput;
  }

  @override
  void update(void Function(GCreateTodolistInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateTodolistInput build() {
    final _$result = _$v ??
        new _$GCreateTodolistInput._(
            createdAt: createdAt,
            memo: memo,
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'GCreateTodolistInput', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteTodolistInput extends GDeleteTodolistInput {
  @override
  final String id;

  factory _$GDeleteTodolistInput(
          [void Function(GDeleteTodolistInputBuilder)? updates]) =>
      (new GDeleteTodolistInputBuilder()..update(updates)).build();

  _$GDeleteTodolistInput._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GDeleteTodolistInput', 'id');
  }

  @override
  GDeleteTodolistInput rebuild(
          void Function(GDeleteTodolistInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteTodolistInputBuilder toBuilder() =>
      new GDeleteTodolistInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteTodolistInput && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteTodolistInput')..add('id', id))
        .toString();
  }
}

class GDeleteTodolistInputBuilder
    implements Builder<GDeleteTodolistInput, GDeleteTodolistInputBuilder> {
  _$GDeleteTodolistInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDeleteTodolistInputBuilder();

  GDeleteTodolistInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteTodolistInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteTodolistInput;
  }

  @override
  void update(void Function(GDeleteTodolistInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteTodolistInput build() {
    final _$result = _$v ??
        new _$GDeleteTodolistInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GDeleteTodolistInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GTableBooleanFilterInput extends GTableBooleanFilterInput {
  @override
  final bool? eq;
  @override
  final bool? ne;

  factory _$GTableBooleanFilterInput(
          [void Function(GTableBooleanFilterInputBuilder)? updates]) =>
      (new GTableBooleanFilterInputBuilder()..update(updates)).build();

  _$GTableBooleanFilterInput._({this.eq, this.ne}) : super._();

  @override
  GTableBooleanFilterInput rebuild(
          void Function(GTableBooleanFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTableBooleanFilterInputBuilder toBuilder() =>
      new GTableBooleanFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTableBooleanFilterInput &&
        eq == other.eq &&
        ne == other.ne;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, eq.hashCode), ne.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTableBooleanFilterInput')
          ..add('eq', eq)
          ..add('ne', ne))
        .toString();
  }
}

class GTableBooleanFilterInputBuilder
    implements
        Builder<GTableBooleanFilterInput, GTableBooleanFilterInputBuilder> {
  _$GTableBooleanFilterInput? _$v;

  bool? _eq;
  bool? get eq => _$this._eq;
  set eq(bool? eq) => _$this._eq = eq;

  bool? _ne;
  bool? get ne => _$this._ne;
  set ne(bool? ne) => _$this._ne = ne;

  GTableBooleanFilterInputBuilder();

  GTableBooleanFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eq = $v.eq;
      _ne = $v.ne;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTableBooleanFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTableBooleanFilterInput;
  }

  @override
  void update(void Function(GTableBooleanFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTableBooleanFilterInput build() {
    final _$result = _$v ?? new _$GTableBooleanFilterInput._(eq: eq, ne: ne);
    replace(_$result);
    return _$result;
  }
}

class _$GTableFloatFilterInput extends GTableFloatFilterInput {
  @override
  final BuiltList<double>? between;
  @override
  final double? contains;
  @override
  final double? eq;
  @override
  final double? ge;
  @override
  final double? gt;
  @override
  final double? le;
  @override
  final double? lt;
  @override
  final double? ne;
  @override
  final double? notContains;

  factory _$GTableFloatFilterInput(
          [void Function(GTableFloatFilterInputBuilder)? updates]) =>
      (new GTableFloatFilterInputBuilder()..update(updates)).build();

  _$GTableFloatFilterInput._(
      {this.between,
      this.contains,
      this.eq,
      this.ge,
      this.gt,
      this.le,
      this.lt,
      this.ne,
      this.notContains})
      : super._();

  @override
  GTableFloatFilterInput rebuild(
          void Function(GTableFloatFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTableFloatFilterInputBuilder toBuilder() =>
      new GTableFloatFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTableFloatFilterInput &&
        between == other.between &&
        contains == other.contains &&
        eq == other.eq &&
        ge == other.ge &&
        gt == other.gt &&
        le == other.le &&
        lt == other.lt &&
        ne == other.ne &&
        notContains == other.notContains;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, between.hashCode),
                                    contains.hashCode),
                                eq.hashCode),
                            ge.hashCode),
                        gt.hashCode),
                    le.hashCode),
                lt.hashCode),
            ne.hashCode),
        notContains.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTableFloatFilterInput')
          ..add('between', between)
          ..add('contains', contains)
          ..add('eq', eq)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ne', ne)
          ..add('notContains', notContains))
        .toString();
  }
}

class GTableFloatFilterInputBuilder
    implements Builder<GTableFloatFilterInput, GTableFloatFilterInputBuilder> {
  _$GTableFloatFilterInput? _$v;

  ListBuilder<double>? _between;
  ListBuilder<double> get between =>
      _$this._between ??= new ListBuilder<double>();
  set between(ListBuilder<double>? between) => _$this._between = between;

  double? _contains;
  double? get contains => _$this._contains;
  set contains(double? contains) => _$this._contains = contains;

  double? _eq;
  double? get eq => _$this._eq;
  set eq(double? eq) => _$this._eq = eq;

  double? _ge;
  double? get ge => _$this._ge;
  set ge(double? ge) => _$this._ge = ge;

  double? _gt;
  double? get gt => _$this._gt;
  set gt(double? gt) => _$this._gt = gt;

  double? _le;
  double? get le => _$this._le;
  set le(double? le) => _$this._le = le;

  double? _lt;
  double? get lt => _$this._lt;
  set lt(double? lt) => _$this._lt = lt;

  double? _ne;
  double? get ne => _$this._ne;
  set ne(double? ne) => _$this._ne = ne;

  double? _notContains;
  double? get notContains => _$this._notContains;
  set notContains(double? notContains) => _$this._notContains = notContains;

  GTableFloatFilterInputBuilder();

  GTableFloatFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _between = $v.between?.toBuilder();
      _contains = $v.contains;
      _eq = $v.eq;
      _ge = $v.ge;
      _gt = $v.gt;
      _le = $v.le;
      _lt = $v.lt;
      _ne = $v.ne;
      _notContains = $v.notContains;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTableFloatFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTableFloatFilterInput;
  }

  @override
  void update(void Function(GTableFloatFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTableFloatFilterInput build() {
    _$GTableFloatFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GTableFloatFilterInput._(
              between: _between?.build(),
              contains: contains,
              eq: eq,
              ge: ge,
              gt: gt,
              le: le,
              lt: lt,
              ne: ne,
              notContains: notContains);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTableFloatFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTableIDFilterInput extends GTableIDFilterInput {
  @override
  final String? beginsWith;
  @override
  final BuiltList<String>? between;
  @override
  final String? contains;
  @override
  final String? eq;
  @override
  final String? ge;
  @override
  final String? gt;
  @override
  final String? le;
  @override
  final String? lt;
  @override
  final String? ne;
  @override
  final String? notContains;

  factory _$GTableIDFilterInput(
          [void Function(GTableIDFilterInputBuilder)? updates]) =>
      (new GTableIDFilterInputBuilder()..update(updates)).build();

  _$GTableIDFilterInput._(
      {this.beginsWith,
      this.between,
      this.contains,
      this.eq,
      this.ge,
      this.gt,
      this.le,
      this.lt,
      this.ne,
      this.notContains})
      : super._();

  @override
  GTableIDFilterInput rebuild(
          void Function(GTableIDFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTableIDFilterInputBuilder toBuilder() =>
      new GTableIDFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTableIDFilterInput &&
        beginsWith == other.beginsWith &&
        between == other.between &&
        contains == other.contains &&
        eq == other.eq &&
        ge == other.ge &&
        gt == other.gt &&
        le == other.le &&
        lt == other.lt &&
        ne == other.ne &&
        notContains == other.notContains;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, beginsWith.hashCode),
                                        between.hashCode),
                                    contains.hashCode),
                                eq.hashCode),
                            ge.hashCode),
                        gt.hashCode),
                    le.hashCode),
                lt.hashCode),
            ne.hashCode),
        notContains.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTableIDFilterInput')
          ..add('beginsWith', beginsWith)
          ..add('between', between)
          ..add('contains', contains)
          ..add('eq', eq)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ne', ne)
          ..add('notContains', notContains))
        .toString();
  }
}

class GTableIDFilterInputBuilder
    implements Builder<GTableIDFilterInput, GTableIDFilterInputBuilder> {
  _$GTableIDFilterInput? _$v;

  String? _beginsWith;
  String? get beginsWith => _$this._beginsWith;
  set beginsWith(String? beginsWith) => _$this._beginsWith = beginsWith;

  ListBuilder<String>? _between;
  ListBuilder<String> get between =>
      _$this._between ??= new ListBuilder<String>();
  set between(ListBuilder<String>? between) => _$this._between = between;

  String? _contains;
  String? get contains => _$this._contains;
  set contains(String? contains) => _$this._contains = contains;

  String? _eq;
  String? get eq => _$this._eq;
  set eq(String? eq) => _$this._eq = eq;

  String? _ge;
  String? get ge => _$this._ge;
  set ge(String? ge) => _$this._ge = ge;

  String? _gt;
  String? get gt => _$this._gt;
  set gt(String? gt) => _$this._gt = gt;

  String? _le;
  String? get le => _$this._le;
  set le(String? le) => _$this._le = le;

  String? _lt;
  String? get lt => _$this._lt;
  set lt(String? lt) => _$this._lt = lt;

  String? _ne;
  String? get ne => _$this._ne;
  set ne(String? ne) => _$this._ne = ne;

  String? _notContains;
  String? get notContains => _$this._notContains;
  set notContains(String? notContains) => _$this._notContains = notContains;

  GTableIDFilterInputBuilder();

  GTableIDFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _beginsWith = $v.beginsWith;
      _between = $v.between?.toBuilder();
      _contains = $v.contains;
      _eq = $v.eq;
      _ge = $v.ge;
      _gt = $v.gt;
      _le = $v.le;
      _lt = $v.lt;
      _ne = $v.ne;
      _notContains = $v.notContains;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTableIDFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTableIDFilterInput;
  }

  @override
  void update(void Function(GTableIDFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTableIDFilterInput build() {
    _$GTableIDFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GTableIDFilterInput._(
              beginsWith: beginsWith,
              between: _between?.build(),
              contains: contains,
              eq: eq,
              ge: ge,
              gt: gt,
              le: le,
              lt: lt,
              ne: ne,
              notContains: notContains);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTableIDFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTableIntFilterInput extends GTableIntFilterInput {
  @override
  final BuiltList<int>? between;
  @override
  final int? contains;
  @override
  final int? eq;
  @override
  final int? ge;
  @override
  final int? gt;
  @override
  final int? le;
  @override
  final int? lt;
  @override
  final int? ne;
  @override
  final int? notContains;

  factory _$GTableIntFilterInput(
          [void Function(GTableIntFilterInputBuilder)? updates]) =>
      (new GTableIntFilterInputBuilder()..update(updates)).build();

  _$GTableIntFilterInput._(
      {this.between,
      this.contains,
      this.eq,
      this.ge,
      this.gt,
      this.le,
      this.lt,
      this.ne,
      this.notContains})
      : super._();

  @override
  GTableIntFilterInput rebuild(
          void Function(GTableIntFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTableIntFilterInputBuilder toBuilder() =>
      new GTableIntFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTableIntFilterInput &&
        between == other.between &&
        contains == other.contains &&
        eq == other.eq &&
        ge == other.ge &&
        gt == other.gt &&
        le == other.le &&
        lt == other.lt &&
        ne == other.ne &&
        notContains == other.notContains;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, between.hashCode),
                                    contains.hashCode),
                                eq.hashCode),
                            ge.hashCode),
                        gt.hashCode),
                    le.hashCode),
                lt.hashCode),
            ne.hashCode),
        notContains.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTableIntFilterInput')
          ..add('between', between)
          ..add('contains', contains)
          ..add('eq', eq)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ne', ne)
          ..add('notContains', notContains))
        .toString();
  }
}

class GTableIntFilterInputBuilder
    implements Builder<GTableIntFilterInput, GTableIntFilterInputBuilder> {
  _$GTableIntFilterInput? _$v;

  ListBuilder<int>? _between;
  ListBuilder<int> get between => _$this._between ??= new ListBuilder<int>();
  set between(ListBuilder<int>? between) => _$this._between = between;

  int? _contains;
  int? get contains => _$this._contains;
  set contains(int? contains) => _$this._contains = contains;

  int? _eq;
  int? get eq => _$this._eq;
  set eq(int? eq) => _$this._eq = eq;

  int? _ge;
  int? get ge => _$this._ge;
  set ge(int? ge) => _$this._ge = ge;

  int? _gt;
  int? get gt => _$this._gt;
  set gt(int? gt) => _$this._gt = gt;

  int? _le;
  int? get le => _$this._le;
  set le(int? le) => _$this._le = le;

  int? _lt;
  int? get lt => _$this._lt;
  set lt(int? lt) => _$this._lt = lt;

  int? _ne;
  int? get ne => _$this._ne;
  set ne(int? ne) => _$this._ne = ne;

  int? _notContains;
  int? get notContains => _$this._notContains;
  set notContains(int? notContains) => _$this._notContains = notContains;

  GTableIntFilterInputBuilder();

  GTableIntFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _between = $v.between?.toBuilder();
      _contains = $v.contains;
      _eq = $v.eq;
      _ge = $v.ge;
      _gt = $v.gt;
      _le = $v.le;
      _lt = $v.lt;
      _ne = $v.ne;
      _notContains = $v.notContains;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTableIntFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTableIntFilterInput;
  }

  @override
  void update(void Function(GTableIntFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTableIntFilterInput build() {
    _$GTableIntFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GTableIntFilterInput._(
              between: _between?.build(),
              contains: contains,
              eq: eq,
              ge: ge,
              gt: gt,
              le: le,
              lt: lt,
              ne: ne,
              notContains: notContains);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTableIntFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTableStringFilterInput extends GTableStringFilterInput {
  @override
  final String? beginsWith;
  @override
  final BuiltList<String>? between;
  @override
  final String? contains;
  @override
  final String? eq;
  @override
  final String? ge;
  @override
  final String? gt;
  @override
  final String? le;
  @override
  final String? lt;
  @override
  final String? ne;
  @override
  final String? notContains;

  factory _$GTableStringFilterInput(
          [void Function(GTableStringFilterInputBuilder)? updates]) =>
      (new GTableStringFilterInputBuilder()..update(updates)).build();

  _$GTableStringFilterInput._(
      {this.beginsWith,
      this.between,
      this.contains,
      this.eq,
      this.ge,
      this.gt,
      this.le,
      this.lt,
      this.ne,
      this.notContains})
      : super._();

  @override
  GTableStringFilterInput rebuild(
          void Function(GTableStringFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTableStringFilterInputBuilder toBuilder() =>
      new GTableStringFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTableStringFilterInput &&
        beginsWith == other.beginsWith &&
        between == other.between &&
        contains == other.contains &&
        eq == other.eq &&
        ge == other.ge &&
        gt == other.gt &&
        le == other.le &&
        lt == other.lt &&
        ne == other.ne &&
        notContains == other.notContains;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, beginsWith.hashCode),
                                        between.hashCode),
                                    contains.hashCode),
                                eq.hashCode),
                            ge.hashCode),
                        gt.hashCode),
                    le.hashCode),
                lt.hashCode),
            ne.hashCode),
        notContains.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTableStringFilterInput')
          ..add('beginsWith', beginsWith)
          ..add('between', between)
          ..add('contains', contains)
          ..add('eq', eq)
          ..add('ge', ge)
          ..add('gt', gt)
          ..add('le', le)
          ..add('lt', lt)
          ..add('ne', ne)
          ..add('notContains', notContains))
        .toString();
  }
}

class GTableStringFilterInputBuilder
    implements
        Builder<GTableStringFilterInput, GTableStringFilterInputBuilder> {
  _$GTableStringFilterInput? _$v;

  String? _beginsWith;
  String? get beginsWith => _$this._beginsWith;
  set beginsWith(String? beginsWith) => _$this._beginsWith = beginsWith;

  ListBuilder<String>? _between;
  ListBuilder<String> get between =>
      _$this._between ??= new ListBuilder<String>();
  set between(ListBuilder<String>? between) => _$this._between = between;

  String? _contains;
  String? get contains => _$this._contains;
  set contains(String? contains) => _$this._contains = contains;

  String? _eq;
  String? get eq => _$this._eq;
  set eq(String? eq) => _$this._eq = eq;

  String? _ge;
  String? get ge => _$this._ge;
  set ge(String? ge) => _$this._ge = ge;

  String? _gt;
  String? get gt => _$this._gt;
  set gt(String? gt) => _$this._gt = gt;

  String? _le;
  String? get le => _$this._le;
  set le(String? le) => _$this._le = le;

  String? _lt;
  String? get lt => _$this._lt;
  set lt(String? lt) => _$this._lt = lt;

  String? _ne;
  String? get ne => _$this._ne;
  set ne(String? ne) => _$this._ne = ne;

  String? _notContains;
  String? get notContains => _$this._notContains;
  set notContains(String? notContains) => _$this._notContains = notContains;

  GTableStringFilterInputBuilder();

  GTableStringFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _beginsWith = $v.beginsWith;
      _between = $v.between?.toBuilder();
      _contains = $v.contains;
      _eq = $v.eq;
      _ge = $v.ge;
      _gt = $v.gt;
      _le = $v.le;
      _lt = $v.lt;
      _ne = $v.ne;
      _notContains = $v.notContains;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTableStringFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTableStringFilterInput;
  }

  @override
  void update(void Function(GTableStringFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTableStringFilterInput build() {
    _$GTableStringFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GTableStringFilterInput._(
              beginsWith: beginsWith,
              between: _between?.build(),
              contains: contains,
              eq: eq,
              ge: ge,
              gt: gt,
              le: le,
              lt: lt,
              ne: ne,
              notContains: notContains);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'between';
        _between?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTableStringFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTableTodolistFilterInput extends GTableTodolistFilterInput {
  @override
  final GTableIntFilterInput? createdAt;
  @override
  final GTableIDFilterInput? id;
  @override
  final GTableStringFilterInput? memo;
  @override
  final GTableStringFilterInput? title;

  factory _$GTableTodolistFilterInput(
          [void Function(GTableTodolistFilterInputBuilder)? updates]) =>
      (new GTableTodolistFilterInputBuilder()..update(updates)).build();

  _$GTableTodolistFilterInput._(
      {this.createdAt, this.id, this.memo, this.title})
      : super._();

  @override
  GTableTodolistFilterInput rebuild(
          void Function(GTableTodolistFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTableTodolistFilterInputBuilder toBuilder() =>
      new GTableTodolistFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTableTodolistFilterInput &&
        createdAt == other.createdAt &&
        id == other.id &&
        memo == other.memo &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, createdAt.hashCode), id.hashCode), memo.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTableTodolistFilterInput')
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('memo', memo)
          ..add('title', title))
        .toString();
  }
}

class GTableTodolistFilterInputBuilder
    implements
        Builder<GTableTodolistFilterInput, GTableTodolistFilterInputBuilder> {
  _$GTableTodolistFilterInput? _$v;

  GTableIntFilterInputBuilder? _createdAt;
  GTableIntFilterInputBuilder get createdAt =>
      _$this._createdAt ??= new GTableIntFilterInputBuilder();
  set createdAt(GTableIntFilterInputBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GTableIDFilterInputBuilder? _id;
  GTableIDFilterInputBuilder get id =>
      _$this._id ??= new GTableIDFilterInputBuilder();
  set id(GTableIDFilterInputBuilder? id) => _$this._id = id;

  GTableStringFilterInputBuilder? _memo;
  GTableStringFilterInputBuilder get memo =>
      _$this._memo ??= new GTableStringFilterInputBuilder();
  set memo(GTableStringFilterInputBuilder? memo) => _$this._memo = memo;

  GTableStringFilterInputBuilder? _title;
  GTableStringFilterInputBuilder get title =>
      _$this._title ??= new GTableStringFilterInputBuilder();
  set title(GTableStringFilterInputBuilder? title) => _$this._title = title;

  GTableTodolistFilterInputBuilder();

  GTableTodolistFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt?.toBuilder();
      _id = $v.id?.toBuilder();
      _memo = $v.memo?.toBuilder();
      _title = $v.title?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTableTodolistFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTableTodolistFilterInput;
  }

  @override
  void update(void Function(GTableTodolistFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTableTodolistFilterInput build() {
    _$GTableTodolistFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GTableTodolistFilterInput._(
              createdAt: _createdAt?.build(),
              id: _id?.build(),
              memo: _memo?.build(),
              title: _title?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'id';
        _id?.build();
        _$failedField = 'memo';
        _memo?.build();
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GTableTodolistFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateTodolistInput extends GUpdateTodolistInput {
  @override
  final int? createdAt;
  @override
  final String id;
  @override
  final String? memo;
  @override
  final String? title;

  factory _$GUpdateTodolistInput(
          [void Function(GUpdateTodolistInputBuilder)? updates]) =>
      (new GUpdateTodolistInputBuilder()..update(updates)).build();

  _$GUpdateTodolistInput._(
      {this.createdAt, required this.id, this.memo, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GUpdateTodolistInput', 'id');
  }

  @override
  GUpdateTodolistInput rebuild(
          void Function(GUpdateTodolistInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateTodolistInputBuilder toBuilder() =>
      new GUpdateTodolistInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateTodolistInput &&
        createdAt == other.createdAt &&
        id == other.id &&
        memo == other.memo &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, createdAt.hashCode), id.hashCode), memo.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateTodolistInput')
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('memo', memo)
          ..add('title', title))
        .toString();
  }
}

class GUpdateTodolistInputBuilder
    implements Builder<GUpdateTodolistInput, GUpdateTodolistInputBuilder> {
  _$GUpdateTodolistInput? _$v;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GUpdateTodolistInputBuilder();

  GUpdateTodolistInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _id = $v.id;
      _memo = $v.memo;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateTodolistInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateTodolistInput;
  }

  @override
  void update(void Function(GUpdateTodolistInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateTodolistInput build() {
    final _$result = _$v ??
        new _$GUpdateTodolistInput._(
            createdAt: createdAt,
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GUpdateTodolistInput', 'id'),
            memo: memo,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
