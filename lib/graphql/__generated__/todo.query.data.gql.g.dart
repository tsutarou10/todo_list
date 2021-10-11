// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlistTodolistsData> _$glistTodolistsDataSerializer =
    new _$GlistTodolistsDataSerializer();
Serializer<GlistTodolistsData_listTodolists>
    _$glistTodolistsDataListTodolistsSerializer =
    new _$GlistTodolistsData_listTodolistsSerializer();
Serializer<GlistTodolistsData_listTodolists_items>
    _$glistTodolistsDataListTodolistsItemsSerializer =
    new _$GlistTodolistsData_listTodolists_itemsSerializer();
Serializer<GcreateTodolistData> _$gcreateTodolistDataSerializer =
    new _$GcreateTodolistDataSerializer();
Serializer<GcreateTodolistData_createTodolist>
    _$gcreateTodolistDataCreateTodolistSerializer =
    new _$GcreateTodolistData_createTodolistSerializer();

class _$GlistTodolistsDataSerializer
    implements StructuredSerializer<GlistTodolistsData> {
  @override
  final Iterable<Type> types = const [GlistTodolistsData, _$GlistTodolistsData];
  @override
  final String wireName = 'GlistTodolistsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodolistsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listTodolists;
    if (value != null) {
      result
        ..add('listTodolists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GlistTodolistsData_listTodolists)));
    }
    return result;
  }

  @override
  GlistTodolistsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodolistsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'listTodolists':
          result.listTodolists.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GlistTodolistsData_listTodolists))!
              as GlistTodolistsData_listTodolists);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodolistsData_listTodolistsSerializer
    implements StructuredSerializer<GlistTodolistsData_listTodolists> {
  @override
  final Iterable<Type> types = const [
    GlistTodolistsData_listTodolists,
    _$GlistTodolistsData_listTodolists
  ];
  @override
  final String wireName = 'GlistTodolistsData_listTodolists';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodolistsData_listTodolists object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.items;
    if (value != null) {
      result
        ..add('items')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GlistTodolistsData_listTodolists_items)
            ])));
    }
    return result;
  }

  @override
  GlistTodolistsData_listTodolists deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodolistsData_listTodolistsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GlistTodolistsData_listTodolists_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodolistsData_listTodolists_itemsSerializer
    implements StructuredSerializer<GlistTodolistsData_listTodolists_items> {
  @override
  final Iterable<Type> types = const [
    GlistTodolistsData_listTodolists_items,
    _$GlistTodolistsData_listTodolists_items
  ];
  @override
  final String wireName = 'GlistTodolistsData_listTodolists_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodolistsData_listTodolists_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
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
  GlistTodolistsData_listTodolists_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodolistsData_listTodolists_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTodolistDataSerializer
    implements StructuredSerializer<GcreateTodolistData> {
  @override
  final Iterable<Type> types = const [
    GcreateTodolistData,
    _$GcreateTodolistData
  ];
  @override
  final String wireName = 'GcreateTodolistData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTodolistData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createTodolist;
    if (value != null) {
      result
        ..add('createTodolist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GcreateTodolistData_createTodolist)));
    }
    return result;
  }

  @override
  GcreateTodolistData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTodolistDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createTodolist':
          result.createTodolist.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcreateTodolistData_createTodolist))!
              as GcreateTodolistData_createTodolist);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTodolistData_createTodolistSerializer
    implements StructuredSerializer<GcreateTodolistData_createTodolist> {
  @override
  final Iterable<Type> types = const [
    GcreateTodolistData_createTodolist,
    _$GcreateTodolistData_createTodolist
  ];
  @override
  final String wireName = 'GcreateTodolistData_createTodolist';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTodolistData_createTodolist object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.memo;
    if (value != null) {
      result
        ..add('memo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GcreateTodolistData_createTodolist deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTodolistData_createTodolistBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodolistsData extends GlistTodolistsData {
  @override
  final String G__typename;
  @override
  final GlistTodolistsData_listTodolists? listTodolists;

  factory _$GlistTodolistsData(
          [void Function(GlistTodolistsDataBuilder)? updates]) =>
      (new GlistTodolistsDataBuilder()..update(updates)).build();

  _$GlistTodolistsData._({required this.G__typename, this.listTodolists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GlistTodolistsData', 'G__typename');
  }

  @override
  GlistTodolistsData rebuild(
          void Function(GlistTodolistsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodolistsDataBuilder toBuilder() =>
      new GlistTodolistsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodolistsData &&
        G__typename == other.G__typename &&
        listTodolists == other.listTodolists;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), listTodolists.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GlistTodolistsData')
          ..add('G__typename', G__typename)
          ..add('listTodolists', listTodolists))
        .toString();
  }
}

class GlistTodolistsDataBuilder
    implements Builder<GlistTodolistsData, GlistTodolistsDataBuilder> {
  _$GlistTodolistsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GlistTodolistsData_listTodolistsBuilder? _listTodolists;
  GlistTodolistsData_listTodolistsBuilder get listTodolists =>
      _$this._listTodolists ??= new GlistTodolistsData_listTodolistsBuilder();
  set listTodolists(GlistTodolistsData_listTodolistsBuilder? listTodolists) =>
      _$this._listTodolists = listTodolists;

  GlistTodolistsDataBuilder() {
    GlistTodolistsData._initializeBuilder(this);
  }

  GlistTodolistsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listTodolists = $v.listTodolists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodolistsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodolistsData;
  }

  @override
  void update(void Function(GlistTodolistsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodolistsData build() {
    _$GlistTodolistsData _$result;
    try {
      _$result = _$v ??
          new _$GlistTodolistsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GlistTodolistsData', 'G__typename'),
              listTodolists: _listTodolists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listTodolists';
        _listTodolists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GlistTodolistsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistTodolistsData_listTodolists
    extends GlistTodolistsData_listTodolists {
  @override
  final String G__typename;
  @override
  final BuiltList<GlistTodolistsData_listTodolists_items>? items;

  factory _$GlistTodolistsData_listTodolists(
          [void Function(GlistTodolistsData_listTodolistsBuilder)? updates]) =>
      (new GlistTodolistsData_listTodolistsBuilder()..update(updates)).build();

  _$GlistTodolistsData_listTodolists._({required this.G__typename, this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GlistTodolistsData_listTodolists', 'G__typename');
  }

  @override
  GlistTodolistsData_listTodolists rebuild(
          void Function(GlistTodolistsData_listTodolistsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodolistsData_listTodolistsBuilder toBuilder() =>
      new GlistTodolistsData_listTodolistsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodolistsData_listTodolists &&
        G__typename == other.G__typename &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GlistTodolistsData_listTodolists')
          ..add('G__typename', G__typename)
          ..add('items', items))
        .toString();
  }
}

class GlistTodolistsData_listTodolistsBuilder
    implements
        Builder<GlistTodolistsData_listTodolists,
            GlistTodolistsData_listTodolistsBuilder> {
  _$GlistTodolistsData_listTodolists? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GlistTodolistsData_listTodolists_items>? _items;
  ListBuilder<GlistTodolistsData_listTodolists_items> get items =>
      _$this._items ??=
          new ListBuilder<GlistTodolistsData_listTodolists_items>();
  set items(ListBuilder<GlistTodolistsData_listTodolists_items>? items) =>
      _$this._items = items;

  GlistTodolistsData_listTodolistsBuilder() {
    GlistTodolistsData_listTodolists._initializeBuilder(this);
  }

  GlistTodolistsData_listTodolistsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodolistsData_listTodolists other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodolistsData_listTodolists;
  }

  @override
  void update(void Function(GlistTodolistsData_listTodolistsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodolistsData_listTodolists build() {
    _$GlistTodolistsData_listTodolists _$result;
    try {
      _$result = _$v ??
          new _$GlistTodolistsData_listTodolists._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GlistTodolistsData_listTodolists', 'G__typename'),
              items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GlistTodolistsData_listTodolists', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistTodolistsData_listTodolists_items
    extends GlistTodolistsData_listTodolists_items {
  @override
  final String G__typename;
  @override
  final int? createdAt;
  @override
  final String id;
  @override
  final String? memo;
  @override
  final String title;
  @override
  final String status;

  factory _$GlistTodolistsData_listTodolists_items(
          [void Function(GlistTodolistsData_listTodolists_itemsBuilder)?
              updates]) =>
      (new GlistTodolistsData_listTodolists_itemsBuilder()..update(updates))
          .build();

  _$GlistTodolistsData_listTodolists_items._(
      {required this.G__typename,
      this.createdAt,
      required this.id,
      this.memo,
      required this.title,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GlistTodolistsData_listTodolists_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GlistTodolistsData_listTodolists_items', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GlistTodolistsData_listTodolists_items', 'title');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GlistTodolistsData_listTodolists_items', 'status');
  }

  @override
  GlistTodolistsData_listTodolists_items rebuild(
          void Function(GlistTodolistsData_listTodolists_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodolistsData_listTodolists_itemsBuilder toBuilder() =>
      new GlistTodolistsData_listTodolists_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodolistsData_listTodolists_items &&
        G__typename == other.G__typename &&
        createdAt == other.createdAt &&
        id == other.id &&
        memo == other.memo &&
        title == other.title &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), createdAt.hashCode),
                    id.hashCode),
                memo.hashCode),
            title.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GlistTodolistsData_listTodolists_items')
          ..add('G__typename', G__typename)
          ..add('createdAt', createdAt)
          ..add('id', id)
          ..add('memo', memo)
          ..add('title', title)
          ..add('status', status))
        .toString();
  }
}

class GlistTodolistsData_listTodolists_itemsBuilder
    implements
        Builder<GlistTodolistsData_listTodolists_items,
            GlistTodolistsData_listTodolists_itemsBuilder> {
  _$GlistTodolistsData_listTodolists_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GlistTodolistsData_listTodolists_itemsBuilder() {
    GlistTodolistsData_listTodolists_items._initializeBuilder(this);
  }

  GlistTodolistsData_listTodolists_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createdAt = $v.createdAt;
      _id = $v.id;
      _memo = $v.memo;
      _title = $v.title;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodolistsData_listTodolists_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodolistsData_listTodolists_items;
  }

  @override
  void update(
      void Function(GlistTodolistsData_listTodolists_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodolistsData_listTodolists_items build() {
    final _$result = _$v ??
        new _$GlistTodolistsData_listTodolists_items._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GlistTodolistsData_listTodolists_items', 'G__typename'),
            createdAt: createdAt,
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GlistTodolistsData_listTodolists_items', 'id'),
            memo: memo,
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'GlistTodolistsData_listTodolists_items', 'title'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GlistTodolistsData_listTodolists_items', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$GcreateTodolistData extends GcreateTodolistData {
  @override
  final String G__typename;
  @override
  final GcreateTodolistData_createTodolist? createTodolist;

  factory _$GcreateTodolistData(
          [void Function(GcreateTodolistDataBuilder)? updates]) =>
      (new GcreateTodolistDataBuilder()..update(updates)).build();

  _$GcreateTodolistData._({required this.G__typename, this.createTodolist})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GcreateTodolistData', 'G__typename');
  }

  @override
  GcreateTodolistData rebuild(
          void Function(GcreateTodolistDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTodolistDataBuilder toBuilder() =>
      new GcreateTodolistDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTodolistData &&
        G__typename == other.G__typename &&
        createTodolist == other.createTodolist;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createTodolist.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreateTodolistData')
          ..add('G__typename', G__typename)
          ..add('createTodolist', createTodolist))
        .toString();
  }
}

class GcreateTodolistDataBuilder
    implements Builder<GcreateTodolistData, GcreateTodolistDataBuilder> {
  _$GcreateTodolistData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreateTodolistData_createTodolistBuilder? _createTodolist;
  GcreateTodolistData_createTodolistBuilder get createTodolist =>
      _$this._createTodolist ??=
          new GcreateTodolistData_createTodolistBuilder();
  set createTodolist(
          GcreateTodolistData_createTodolistBuilder? createTodolist) =>
      _$this._createTodolist = createTodolist;

  GcreateTodolistDataBuilder() {
    GcreateTodolistData._initializeBuilder(this);
  }

  GcreateTodolistDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createTodolist = $v.createTodolist?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTodolistData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTodolistData;
  }

  @override
  void update(void Function(GcreateTodolistDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreateTodolistData build() {
    _$GcreateTodolistData _$result;
    try {
      _$result = _$v ??
          new _$GcreateTodolistData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GcreateTodolistData', 'G__typename'),
              createTodolist: _createTodolist?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createTodolist';
        _createTodolist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcreateTodolistData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateTodolistData_createTodolist
    extends GcreateTodolistData_createTodolist {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final String? memo;
  @override
  final int? createdAt;
  @override
  final String status;

  factory _$GcreateTodolistData_createTodolist(
          [void Function(GcreateTodolistData_createTodolistBuilder)?
              updates]) =>
      (new GcreateTodolistData_createTodolistBuilder()..update(updates))
          .build();

  _$GcreateTodolistData_createTodolist._(
      {required this.G__typename,
      required this.id,
      required this.title,
      this.memo,
      this.createdAt,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GcreateTodolistData_createTodolist', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GcreateTodolistData_createTodolist', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GcreateTodolistData_createTodolist', 'title');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GcreateTodolistData_createTodolist', 'status');
  }

  @override
  GcreateTodolistData_createTodolist rebuild(
          void Function(GcreateTodolistData_createTodolistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTodolistData_createTodolistBuilder toBuilder() =>
      new GcreateTodolistData_createTodolistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTodolistData_createTodolist &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        memo == other.memo &&
        createdAt == other.createdAt &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    title.hashCode),
                memo.hashCode),
            createdAt.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreateTodolistData_createTodolist')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('memo', memo)
          ..add('createdAt', createdAt)
          ..add('status', status))
        .toString();
  }
}

class GcreateTodolistData_createTodolistBuilder
    implements
        Builder<GcreateTodolistData_createTodolist,
            GcreateTodolistData_createTodolistBuilder> {
  _$GcreateTodolistData_createTodolist? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GcreateTodolistData_createTodolistBuilder() {
    GcreateTodolistData_createTodolist._initializeBuilder(this);
  }

  GcreateTodolistData_createTodolistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _memo = $v.memo;
      _createdAt = $v.createdAt;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTodolistData_createTodolist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTodolistData_createTodolist;
  }

  @override
  void update(
      void Function(GcreateTodolistData_createTodolistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreateTodolistData_createTodolist build() {
    final _$result = _$v ??
        new _$GcreateTodolistData_createTodolist._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GcreateTodolistData_createTodolist', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GcreateTodolistData_createTodolist', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'GcreateTodolistData_createTodolist', 'title'),
            memo: memo,
            createdAt: createdAt,
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GcreateTodolistData_createTodolist', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
