// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistTodolistsVars> _$glistTodolistsVarsSerializer =
    new _$GlistTodolistsVarsSerializer();
Serializer<GcreateTodolistVars> _$gcreateTodolistVarsSerializer =
    new _$GcreateTodolistVarsSerializer();

class _$GlistTodolistsVarsSerializer
    implements StructuredSerializer<GlistTodolistsVars> {
  @override
  final Iterable<Type> types = const [GlistTodolistsVars, _$GlistTodolistsVars];
  @override
  final String wireName = 'GlistTodolistsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodolistsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.filter;
    if (value != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GTableTodolistFilterInput)));
    }
    return result;
  }

  @override
  GlistTodolistsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodolistsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filter':
          result.filter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTableTodolistFilterInput))!
              as _i1.GTableTodolistFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTodolistVarsSerializer
    implements StructuredSerializer<GcreateTodolistVars> {
  @override
  final Iterable<Type> types = const [
    GcreateTodolistVars,
    _$GcreateTodolistVars
  ];
  @override
  final String wireName = 'GcreateTodolistVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTodolistVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'createtodolistinput',
      serializers.serialize(object.createtodolistinput,
          specifiedType: const FullType(_i1.GCreateTodolistInput)),
    ];

    return result;
  }

  @override
  GcreateTodolistVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTodolistVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createtodolistinput':
          result.createtodolistinput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCreateTodolistInput))!
              as _i1.GCreateTodolistInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodolistsVars extends GlistTodolistsVars {
  @override
  final _i1.GTableTodolistFilterInput? filter;

  factory _$GlistTodolistsVars(
          [void Function(GlistTodolistsVarsBuilder)? updates]) =>
      (new GlistTodolistsVarsBuilder()..update(updates)).build();

  _$GlistTodolistsVars._({this.filter}) : super._();

  @override
  GlistTodolistsVars rebuild(
          void Function(GlistTodolistsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodolistsVarsBuilder toBuilder() =>
      new GlistTodolistsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodolistsVars && filter == other.filter;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GlistTodolistsVars')
          ..add('filter', filter))
        .toString();
  }
}

class GlistTodolistsVarsBuilder
    implements Builder<GlistTodolistsVars, GlistTodolistsVarsBuilder> {
  _$GlistTodolistsVars? _$v;

  _i1.GTableTodolistFilterInputBuilder? _filter;
  _i1.GTableTodolistFilterInputBuilder get filter =>
      _$this._filter ??= new _i1.GTableTodolistFilterInputBuilder();
  set filter(_i1.GTableTodolistFilterInputBuilder? filter) =>
      _$this._filter = filter;

  GlistTodolistsVarsBuilder();

  GlistTodolistsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodolistsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodolistsVars;
  }

  @override
  void update(void Function(GlistTodolistsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodolistsVars build() {
    _$GlistTodolistsVars _$result;
    try {
      _$result = _$v ?? new _$GlistTodolistsVars._(filter: _filter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GlistTodolistsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateTodolistVars extends GcreateTodolistVars {
  @override
  final _i1.GCreateTodolistInput createtodolistinput;

  factory _$GcreateTodolistVars(
          [void Function(GcreateTodolistVarsBuilder)? updates]) =>
      (new GcreateTodolistVarsBuilder()..update(updates)).build();

  _$GcreateTodolistVars._({required this.createtodolistinput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createtodolistinput, 'GcreateTodolistVars', 'createtodolistinput');
  }

  @override
  GcreateTodolistVars rebuild(
          void Function(GcreateTodolistVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTodolistVarsBuilder toBuilder() =>
      new GcreateTodolistVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTodolistVars &&
        createtodolistinput == other.createtodolistinput;
  }

  @override
  int get hashCode {
    return $jf($jc(0, createtodolistinput.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreateTodolistVars')
          ..add('createtodolistinput', createtodolistinput))
        .toString();
  }
}

class GcreateTodolistVarsBuilder
    implements Builder<GcreateTodolistVars, GcreateTodolistVarsBuilder> {
  _$GcreateTodolistVars? _$v;

  _i1.GCreateTodolistInputBuilder? _createtodolistinput;
  _i1.GCreateTodolistInputBuilder get createtodolistinput =>
      _$this._createtodolistinput ??= new _i1.GCreateTodolistInputBuilder();
  set createtodolistinput(
          _i1.GCreateTodolistInputBuilder? createtodolistinput) =>
      _$this._createtodolistinput = createtodolistinput;

  GcreateTodolistVarsBuilder();

  GcreateTodolistVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createtodolistinput = $v.createtodolistinput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTodolistVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTodolistVars;
  }

  @override
  void update(void Function(GcreateTodolistVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreateTodolistVars build() {
    _$GcreateTodolistVars _$result;
    try {
      _$result = _$v ??
          new _$GcreateTodolistVars._(
              createtodolistinput: createtodolistinput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createtodolistinput';
        createtodolistinput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcreateTodolistVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
