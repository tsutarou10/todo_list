// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreateTodoListVars> _$gcreateTodoListVarsSerializer =
    new _$GcreateTodoListVarsSerializer();
Serializer<GlistTodoListsVars> _$glistTodoListsVarsSerializer =
    new _$GlistTodoListsVarsSerializer();

class _$GcreateTodoListVarsSerializer
    implements StructuredSerializer<GcreateTodoListVars> {
  @override
  final Iterable<Type> types = const [
    GcreateTodoListVars,
    _$GcreateTodoListVars
  ];
  @override
  final String wireName = 'GcreateTodoListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTodoListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'createtodolistinput',
      serializers.serialize(object.createtodolistinput,
          specifiedType: const FullType(_i1.GCreateTodoListInput)),
    ];

    return result;
  }

  @override
  GcreateTodoListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTodoListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createtodolistinput':
          result.createtodolistinput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCreateTodoListInput))!
              as _i1.GCreateTodoListInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodoListsVarsSerializer
    implements StructuredSerializer<GlistTodoListsVars> {
  @override
  final Iterable<Type> types = const [GlistTodoListsVars, _$GlistTodoListsVars];
  @override
  final String wireName = 'GlistTodoListsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodoListsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'filter',
      serializers.serialize(object.filter,
          specifiedType: const FullType(_i1.GTableTodoListFilterInput)),
    ];

    return result;
  }

  @override
  GlistTodoListsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodoListsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filter':
          result.filter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTableTodoListFilterInput))!
              as _i1.GTableTodoListFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTodoListVars extends GcreateTodoListVars {
  @override
  final _i1.GCreateTodoListInput createtodolistinput;

  factory _$GcreateTodoListVars(
          [void Function(GcreateTodoListVarsBuilder)? updates]) =>
      (new GcreateTodoListVarsBuilder()..update(updates)).build();

  _$GcreateTodoListVars._({required this.createtodolistinput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createtodolistinput, 'GcreateTodoListVars', 'createtodolistinput');
  }

  @override
  GcreateTodoListVars rebuild(
          void Function(GcreateTodoListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTodoListVarsBuilder toBuilder() =>
      new GcreateTodoListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTodoListVars &&
        createtodolistinput == other.createtodolistinput;
  }

  @override
  int get hashCode {
    return $jf($jc(0, createtodolistinput.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreateTodoListVars')
          ..add('createtodolistinput', createtodolistinput))
        .toString();
  }
}

class GcreateTodoListVarsBuilder
    implements Builder<GcreateTodoListVars, GcreateTodoListVarsBuilder> {
  _$GcreateTodoListVars? _$v;

  _i1.GCreateTodoListInputBuilder? _createtodolistinput;
  _i1.GCreateTodoListInputBuilder get createtodolistinput =>
      _$this._createtodolistinput ??= new _i1.GCreateTodoListInputBuilder();
  set createtodolistinput(
          _i1.GCreateTodoListInputBuilder? createtodolistinput) =>
      _$this._createtodolistinput = createtodolistinput;

  GcreateTodoListVarsBuilder();

  GcreateTodoListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createtodolistinput = $v.createtodolistinput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTodoListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTodoListVars;
  }

  @override
  void update(void Function(GcreateTodoListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreateTodoListVars build() {
    _$GcreateTodoListVars _$result;
    try {
      _$result = _$v ??
          new _$GcreateTodoListVars._(
              createtodolistinput: createtodolistinput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createtodolistinput';
        createtodolistinput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcreateTodoListVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistTodoListsVars extends GlistTodoListsVars {
  @override
  final _i1.GTableTodoListFilterInput filter;

  factory _$GlistTodoListsVars(
          [void Function(GlistTodoListsVarsBuilder)? updates]) =>
      (new GlistTodoListsVarsBuilder()..update(updates)).build();

  _$GlistTodoListsVars._({required this.filter}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        filter, 'GlistTodoListsVars', 'filter');
  }

  @override
  GlistTodoListsVars rebuild(
          void Function(GlistTodoListsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodoListsVarsBuilder toBuilder() =>
      new GlistTodoListsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodoListsVars && filter == other.filter;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GlistTodoListsVars')
          ..add('filter', filter))
        .toString();
  }
}

class GlistTodoListsVarsBuilder
    implements Builder<GlistTodoListsVars, GlistTodoListsVarsBuilder> {
  _$GlistTodoListsVars? _$v;

  _i1.GTableTodoListFilterInputBuilder? _filter;
  _i1.GTableTodoListFilterInputBuilder get filter =>
      _$this._filter ??= new _i1.GTableTodoListFilterInputBuilder();
  set filter(_i1.GTableTodoListFilterInputBuilder? filter) =>
      _$this._filter = filter;

  GlistTodoListsVarsBuilder();

  GlistTodoListsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodoListsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodoListsVars;
  }

  @override
  void update(void Function(GlistTodoListsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodoListsVars build() {
    _$GlistTodoListsVars _$result;
    try {
      _$result = _$v ?? new _$GlistTodoListsVars._(filter: filter.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        filter.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GlistTodoListsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
