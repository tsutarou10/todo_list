// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreateTodoListVars> _$gcreateTodoListVarsSerializer =
    new _$GcreateTodoListVarsSerializer();
Serializer<GlistTodoListsVars> _$glistTodoListsVarsSerializer =
    new _$GlistTodoListsVarsSerializer();
Serializer<GdeleteTodoListVars> _$gdeleteTodoListVarsSerializer =
    new _$GdeleteTodoListVarsSerializer();
Serializer<GupdateTodoListVars> _$gupdateTodoListVarsSerializer =
    new _$GupdateTodoListVarsSerializer();

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

class _$GdeleteTodoListVarsSerializer
    implements StructuredSerializer<GdeleteTodoListVars> {
  @override
  final Iterable<Type> types = const [
    GdeleteTodoListVars,
    _$GdeleteTodoListVars
  ];
  @override
  final String wireName = 'GdeleteTodoListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteTodoListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GDeleteTodoListInput)),
    ];

    return result;
  }

  @override
  GdeleteTodoListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteTodoListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDeleteTodoListInput))!
              as _i1.GDeleteTodoListInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateTodoListVarsSerializer
    implements StructuredSerializer<GupdateTodoListVars> {
  @override
  final Iterable<Type> types = const [
    GupdateTodoListVars,
    _$GupdateTodoListVars
  ];
  @override
  final String wireName = 'GupdateTodoListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateTodoListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GUpdateTodoListInput)),
    ];

    return result;
  }

  @override
  GupdateTodoListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateTodoListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUpdateTodoListInput))!
              as _i1.GUpdateTodoListInput);
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

class _$GdeleteTodoListVars extends GdeleteTodoListVars {
  @override
  final _i1.GDeleteTodoListInput input;

  factory _$GdeleteTodoListVars(
          [void Function(GdeleteTodoListVarsBuilder)? updates]) =>
      (new GdeleteTodoListVarsBuilder()..update(updates)).build();

  _$GdeleteTodoListVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, 'GdeleteTodoListVars', 'input');
  }

  @override
  GdeleteTodoListVars rebuild(
          void Function(GdeleteTodoListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteTodoListVarsBuilder toBuilder() =>
      new GdeleteTodoListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteTodoListVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GdeleteTodoListVars')
          ..add('input', input))
        .toString();
  }
}

class GdeleteTodoListVarsBuilder
    implements Builder<GdeleteTodoListVars, GdeleteTodoListVarsBuilder> {
  _$GdeleteTodoListVars? _$v;

  _i1.GDeleteTodoListInputBuilder? _input;
  _i1.GDeleteTodoListInputBuilder get input =>
      _$this._input ??= new _i1.GDeleteTodoListInputBuilder();
  set input(_i1.GDeleteTodoListInputBuilder? input) => _$this._input = input;

  GdeleteTodoListVarsBuilder();

  GdeleteTodoListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteTodoListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteTodoListVars;
  }

  @override
  void update(void Function(GdeleteTodoListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GdeleteTodoListVars build() {
    _$GdeleteTodoListVars _$result;
    try {
      _$result = _$v ?? new _$GdeleteTodoListVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GdeleteTodoListVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateTodoListVars extends GupdateTodoListVars {
  @override
  final _i1.GUpdateTodoListInput input;

  factory _$GupdateTodoListVars(
          [void Function(GupdateTodoListVarsBuilder)? updates]) =>
      (new GupdateTodoListVarsBuilder()..update(updates)).build();

  _$GupdateTodoListVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, 'GupdateTodoListVars', 'input');
  }

  @override
  GupdateTodoListVars rebuild(
          void Function(GupdateTodoListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateTodoListVarsBuilder toBuilder() =>
      new GupdateTodoListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateTodoListVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateTodoListVars')
          ..add('input', input))
        .toString();
  }
}

class GupdateTodoListVarsBuilder
    implements Builder<GupdateTodoListVars, GupdateTodoListVarsBuilder> {
  _$GupdateTodoListVars? _$v;

  _i1.GUpdateTodoListInputBuilder? _input;
  _i1.GUpdateTodoListInputBuilder get input =>
      _$this._input ??= new _i1.GUpdateTodoListInputBuilder();
  set input(_i1.GUpdateTodoListInputBuilder? input) => _$this._input = input;

  GupdateTodoListVarsBuilder();

  GupdateTodoListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateTodoListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateTodoListVars;
  }

  @override
  void update(void Function(GupdateTodoListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateTodoListVars build() {
    _$GupdateTodoListVars _$result;
    try {
      _$result = _$v ?? new _$GupdateTodoListVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GupdateTodoListVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
