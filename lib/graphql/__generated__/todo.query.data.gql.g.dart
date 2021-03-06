// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreateTodoListData> _$gcreateTodoListDataSerializer =
    new _$GcreateTodoListDataSerializer();
Serializer<GcreateTodoListData_createTodoList>
    _$gcreateTodoListDataCreateTodoListSerializer =
    new _$GcreateTodoListData_createTodoListSerializer();
Serializer<GlistTodoListsData> _$glistTodoListsDataSerializer =
    new _$GlistTodoListsDataSerializer();
Serializer<GlistTodoListsData_listTodoLists>
    _$glistTodoListsDataListTodoListsSerializer =
    new _$GlistTodoListsData_listTodoListsSerializer();
Serializer<GlistTodoListsData_listTodoLists_items>
    _$glistTodoListsDataListTodoListsItemsSerializer =
    new _$GlistTodoListsData_listTodoLists_itemsSerializer();
Serializer<GdeleteTodoListData> _$gdeleteTodoListDataSerializer =
    new _$GdeleteTodoListDataSerializer();
Serializer<GdeleteTodoListData_deleteTodoList>
    _$gdeleteTodoListDataDeleteTodoListSerializer =
    new _$GdeleteTodoListData_deleteTodoListSerializer();
Serializer<GupdateTodoListData> _$gupdateTodoListDataSerializer =
    new _$GupdateTodoListDataSerializer();
Serializer<GupdateTodoListData_updateTodoList>
    _$gupdateTodoListDataUpdateTodoListSerializer =
    new _$GupdateTodoListData_updateTodoListSerializer();

class _$GcreateTodoListDataSerializer
    implements StructuredSerializer<GcreateTodoListData> {
  @override
  final Iterable<Type> types = const [
    GcreateTodoListData,
    _$GcreateTodoListData
  ];
  @override
  final String wireName = 'GcreateTodoListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTodoListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createTodoList;
    if (value != null) {
      result
        ..add('createTodoList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GcreateTodoListData_createTodoList)));
    }
    return result;
  }

  @override
  GcreateTodoListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTodoListDataBuilder();

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
        case 'createTodoList':
          result.createTodoList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GcreateTodoListData_createTodoList))!
              as GcreateTodoListData_createTodoList);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTodoListData_createTodoListSerializer
    implements StructuredSerializer<GcreateTodoListData_createTodoList> {
  @override
  final Iterable<Type> types = const [
    GcreateTodoListData_createTodoList,
    _$GcreateTodoListData_createTodoList
  ];
  @override
  final String wireName = 'GcreateTodoListData_createTodoList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateTodoListData_createTodoList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cuid',
      serializers.serialize(object.cuid, specifiedType: const FullType(String)),
      'tid',
      serializers.serialize(object.tid, specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'sortID',
      serializers.serialize(object.sortID, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GcreateTodoListData_createTodoList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateTodoListData_createTodoListBuilder();

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
        case 'cuid':
          result.cuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tid':
          result.tid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sortID':
          result.sortID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodoListsDataSerializer
    implements StructuredSerializer<GlistTodoListsData> {
  @override
  final Iterable<Type> types = const [GlistTodoListsData, _$GlistTodoListsData];
  @override
  final String wireName = 'GlistTodoListsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodoListsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listTodoLists;
    if (value != null) {
      result
        ..add('listTodoLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GlistTodoListsData_listTodoLists)));
    }
    return result;
  }

  @override
  GlistTodoListsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodoListsDataBuilder();

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
        case 'listTodoLists':
          result.listTodoLists.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GlistTodoListsData_listTodoLists))!
              as GlistTodoListsData_listTodoLists);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodoListsData_listTodoListsSerializer
    implements StructuredSerializer<GlistTodoListsData_listTodoLists> {
  @override
  final Iterable<Type> types = const [
    GlistTodoListsData_listTodoLists,
    _$GlistTodoListsData_listTodoLists
  ];
  @override
  final String wireName = 'GlistTodoListsData_listTodoLists';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodoListsData_listTodoLists object,
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
              const FullType(GlistTodoListsData_listTodoLists_items)
            ])));
    }
    return result;
  }

  @override
  GlistTodoListsData_listTodoLists deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodoListsData_listTodoListsBuilder();

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
                const FullType(GlistTodoListsData_listTodoLists_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GlistTodoListsData_listTodoLists_itemsSerializer
    implements StructuredSerializer<GlistTodoListsData_listTodoLists_items> {
  @override
  final Iterable<Type> types = const [
    GlistTodoListsData_listTodoLists_items,
    _$GlistTodoListsData_listTodoLists_items
  ];
  @override
  final String wireName = 'GlistTodoListsData_listTodoLists_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlistTodoListsData_listTodoLists_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cuid',
      serializers.serialize(object.cuid, specifiedType: const FullType(String)),
      'tid',
      serializers.serialize(object.tid, specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'sortID',
      serializers.serialize(object.sortID, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GlistTodoListsData_listTodoLists_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlistTodoListsData_listTodoLists_itemsBuilder();

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
        case 'cuid':
          result.cuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tid':
          result.tid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sortID':
          result.sortID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteTodoListDataSerializer
    implements StructuredSerializer<GdeleteTodoListData> {
  @override
  final Iterable<Type> types = const [
    GdeleteTodoListData,
    _$GdeleteTodoListData
  ];
  @override
  final String wireName = 'GdeleteTodoListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteTodoListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleteTodoList;
    if (value != null) {
      result
        ..add('deleteTodoList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GdeleteTodoListData_deleteTodoList)));
    }
    return result;
  }

  @override
  GdeleteTodoListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteTodoListDataBuilder();

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
        case 'deleteTodoList':
          result.deleteTodoList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GdeleteTodoListData_deleteTodoList))!
              as GdeleteTodoListData_deleteTodoList);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteTodoListData_deleteTodoListSerializer
    implements StructuredSerializer<GdeleteTodoListData_deleteTodoList> {
  @override
  final Iterable<Type> types = const [
    GdeleteTodoListData_deleteTodoList,
    _$GdeleteTodoListData_deleteTodoList
  ];
  @override
  final String wireName = 'GdeleteTodoListData_deleteTodoList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteTodoListData_deleteTodoList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cuid',
      serializers.serialize(object.cuid, specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'tid',
      serializers.serialize(object.tid, specifiedType: const FullType(String)),
      'sortID',
      serializers.serialize(object.sortID, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.memo;
    if (value != null) {
      result
        ..add('memo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  GdeleteTodoListData_deleteTodoList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteTodoListData_deleteTodoListBuilder();

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
        case 'cuid':
          result.cuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tid':
          result.tid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortID':
          result.sortID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateTodoListDataSerializer
    implements StructuredSerializer<GupdateTodoListData> {
  @override
  final Iterable<Type> types = const [
    GupdateTodoListData,
    _$GupdateTodoListData
  ];
  @override
  final String wireName = 'GupdateTodoListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateTodoListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateTodoList;
    if (value != null) {
      result
        ..add('updateTodoList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GupdateTodoListData_updateTodoList)));
    }
    return result;
  }

  @override
  GupdateTodoListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateTodoListDataBuilder();

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
        case 'updateTodoList':
          result.updateTodoList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GupdateTodoListData_updateTodoList))!
              as GupdateTodoListData_updateTodoList);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateTodoListData_updateTodoListSerializer
    implements StructuredSerializer<GupdateTodoListData_updateTodoList> {
  @override
  final Iterable<Type> types = const [
    GupdateTodoListData_updateTodoList,
    _$GupdateTodoListData_updateTodoList
  ];
  @override
  final String wireName = 'GupdateTodoListData_updateTodoList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateTodoListData_updateTodoList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cuid',
      serializers.serialize(object.cuid, specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'tid',
      serializers.serialize(object.tid, specifiedType: const FullType(String)),
      'sortID',
      serializers.serialize(object.sortID, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.memo;
    if (value != null) {
      result
        ..add('memo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  GupdateTodoListData_updateTodoList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateTodoListData_updateTodoListBuilder();

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
        case 'cuid':
          result.cuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'memo':
          result.memo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tid':
          result.tid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sortID':
          result.sortID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateTodoListData extends GcreateTodoListData {
  @override
  final String G__typename;
  @override
  final GcreateTodoListData_createTodoList? createTodoList;

  factory _$GcreateTodoListData(
          [void Function(GcreateTodoListDataBuilder)? updates]) =>
      (new GcreateTodoListDataBuilder()..update(updates)).build();

  _$GcreateTodoListData._({required this.G__typename, this.createTodoList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GcreateTodoListData', 'G__typename');
  }

  @override
  GcreateTodoListData rebuild(
          void Function(GcreateTodoListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTodoListDataBuilder toBuilder() =>
      new GcreateTodoListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTodoListData &&
        G__typename == other.G__typename &&
        createTodoList == other.createTodoList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createTodoList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreateTodoListData')
          ..add('G__typename', G__typename)
          ..add('createTodoList', createTodoList))
        .toString();
  }
}

class GcreateTodoListDataBuilder
    implements Builder<GcreateTodoListData, GcreateTodoListDataBuilder> {
  _$GcreateTodoListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreateTodoListData_createTodoListBuilder? _createTodoList;
  GcreateTodoListData_createTodoListBuilder get createTodoList =>
      _$this._createTodoList ??=
          new GcreateTodoListData_createTodoListBuilder();
  set createTodoList(
          GcreateTodoListData_createTodoListBuilder? createTodoList) =>
      _$this._createTodoList = createTodoList;

  GcreateTodoListDataBuilder() {
    GcreateTodoListData._initializeBuilder(this);
  }

  GcreateTodoListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createTodoList = $v.createTodoList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTodoListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTodoListData;
  }

  @override
  void update(void Function(GcreateTodoListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreateTodoListData build() {
    _$GcreateTodoListData _$result;
    try {
      _$result = _$v ??
          new _$GcreateTodoListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GcreateTodoListData', 'G__typename'),
              createTodoList: _createTodoList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createTodoList';
        _createTodoList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcreateTodoListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreateTodoListData_createTodoList
    extends GcreateTodoListData_createTodoList {
  @override
  final String G__typename;
  @override
  final String cuid;
  @override
  final String tid;
  @override
  final String? title;
  @override
  final String? status;
  @override
  final String priority;
  @override
  final int sortID;
  @override
  final String? memo;

  factory _$GcreateTodoListData_createTodoList(
          [void Function(GcreateTodoListData_createTodoListBuilder)?
              updates]) =>
      (new GcreateTodoListData_createTodoListBuilder()..update(updates))
          .build();

  _$GcreateTodoListData_createTodoList._(
      {required this.G__typename,
      required this.cuid,
      required this.tid,
      this.title,
      this.status,
      required this.priority,
      required this.sortID,
      this.memo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GcreateTodoListData_createTodoList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        cuid, 'GcreateTodoListData_createTodoList', 'cuid');
    BuiltValueNullFieldError.checkNotNull(
        tid, 'GcreateTodoListData_createTodoList', 'tid');
    BuiltValueNullFieldError.checkNotNull(
        priority, 'GcreateTodoListData_createTodoList', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        sortID, 'GcreateTodoListData_createTodoList', 'sortID');
  }

  @override
  GcreateTodoListData_createTodoList rebuild(
          void Function(GcreateTodoListData_createTodoListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateTodoListData_createTodoListBuilder toBuilder() =>
      new GcreateTodoListData_createTodoListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateTodoListData_createTodoList &&
        G__typename == other.G__typename &&
        cuid == other.cuid &&
        tid == other.tid &&
        title == other.title &&
        status == other.status &&
        priority == other.priority &&
        sortID == other.sortID &&
        memo == other.memo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), cuid.hashCode),
                            tid.hashCode),
                        title.hashCode),
                    status.hashCode),
                priority.hashCode),
            sortID.hashCode),
        memo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreateTodoListData_createTodoList')
          ..add('G__typename', G__typename)
          ..add('cuid', cuid)
          ..add('tid', tid)
          ..add('title', title)
          ..add('status', status)
          ..add('priority', priority)
          ..add('sortID', sortID)
          ..add('memo', memo))
        .toString();
  }
}

class GcreateTodoListData_createTodoListBuilder
    implements
        Builder<GcreateTodoListData_createTodoList,
            GcreateTodoListData_createTodoListBuilder> {
  _$GcreateTodoListData_createTodoList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _cuid;
  String? get cuid => _$this._cuid;
  set cuid(String? cuid) => _$this._cuid = cuid;

  String? _tid;
  String? get tid => _$this._tid;
  set tid(String? tid) => _$this._tid = tid;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  int? _sortID;
  int? get sortID => _$this._sortID;
  set sortID(int? sortID) => _$this._sortID = sortID;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  GcreateTodoListData_createTodoListBuilder() {
    GcreateTodoListData_createTodoList._initializeBuilder(this);
  }

  GcreateTodoListData_createTodoListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cuid = $v.cuid;
      _tid = $v.tid;
      _title = $v.title;
      _status = $v.status;
      _priority = $v.priority;
      _sortID = $v.sortID;
      _memo = $v.memo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateTodoListData_createTodoList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateTodoListData_createTodoList;
  }

  @override
  void update(
      void Function(GcreateTodoListData_createTodoListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreateTodoListData_createTodoList build() {
    final _$result = _$v ??
        new _$GcreateTodoListData_createTodoList._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GcreateTodoListData_createTodoList', 'G__typename'),
            cuid: BuiltValueNullFieldError.checkNotNull(
                cuid, 'GcreateTodoListData_createTodoList', 'cuid'),
            tid: BuiltValueNullFieldError.checkNotNull(
                tid, 'GcreateTodoListData_createTodoList', 'tid'),
            title: title,
            status: status,
            priority: BuiltValueNullFieldError.checkNotNull(
                priority, 'GcreateTodoListData_createTodoList', 'priority'),
            sortID: BuiltValueNullFieldError.checkNotNull(
                sortID, 'GcreateTodoListData_createTodoList', 'sortID'),
            memo: memo);
    replace(_$result);
    return _$result;
  }
}

class _$GlistTodoListsData extends GlistTodoListsData {
  @override
  final String G__typename;
  @override
  final GlistTodoListsData_listTodoLists? listTodoLists;

  factory _$GlistTodoListsData(
          [void Function(GlistTodoListsDataBuilder)? updates]) =>
      (new GlistTodoListsDataBuilder()..update(updates)).build();

  _$GlistTodoListsData._({required this.G__typename, this.listTodoLists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GlistTodoListsData', 'G__typename');
  }

  @override
  GlistTodoListsData rebuild(
          void Function(GlistTodoListsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodoListsDataBuilder toBuilder() =>
      new GlistTodoListsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodoListsData &&
        G__typename == other.G__typename &&
        listTodoLists == other.listTodoLists;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), listTodoLists.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GlistTodoListsData')
          ..add('G__typename', G__typename)
          ..add('listTodoLists', listTodoLists))
        .toString();
  }
}

class GlistTodoListsDataBuilder
    implements Builder<GlistTodoListsData, GlistTodoListsDataBuilder> {
  _$GlistTodoListsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GlistTodoListsData_listTodoListsBuilder? _listTodoLists;
  GlistTodoListsData_listTodoListsBuilder get listTodoLists =>
      _$this._listTodoLists ??= new GlistTodoListsData_listTodoListsBuilder();
  set listTodoLists(GlistTodoListsData_listTodoListsBuilder? listTodoLists) =>
      _$this._listTodoLists = listTodoLists;

  GlistTodoListsDataBuilder() {
    GlistTodoListsData._initializeBuilder(this);
  }

  GlistTodoListsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listTodoLists = $v.listTodoLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodoListsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodoListsData;
  }

  @override
  void update(void Function(GlistTodoListsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodoListsData build() {
    _$GlistTodoListsData _$result;
    try {
      _$result = _$v ??
          new _$GlistTodoListsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GlistTodoListsData', 'G__typename'),
              listTodoLists: _listTodoLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listTodoLists';
        _listTodoLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GlistTodoListsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistTodoListsData_listTodoLists
    extends GlistTodoListsData_listTodoLists {
  @override
  final String G__typename;
  @override
  final BuiltList<GlistTodoListsData_listTodoLists_items>? items;

  factory _$GlistTodoListsData_listTodoLists(
          [void Function(GlistTodoListsData_listTodoListsBuilder)? updates]) =>
      (new GlistTodoListsData_listTodoListsBuilder()..update(updates)).build();

  _$GlistTodoListsData_listTodoLists._({required this.G__typename, this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GlistTodoListsData_listTodoLists', 'G__typename');
  }

  @override
  GlistTodoListsData_listTodoLists rebuild(
          void Function(GlistTodoListsData_listTodoListsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodoListsData_listTodoListsBuilder toBuilder() =>
      new GlistTodoListsData_listTodoListsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodoListsData_listTodoLists &&
        G__typename == other.G__typename &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GlistTodoListsData_listTodoLists')
          ..add('G__typename', G__typename)
          ..add('items', items))
        .toString();
  }
}

class GlistTodoListsData_listTodoListsBuilder
    implements
        Builder<GlistTodoListsData_listTodoLists,
            GlistTodoListsData_listTodoListsBuilder> {
  _$GlistTodoListsData_listTodoLists? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GlistTodoListsData_listTodoLists_items>? _items;
  ListBuilder<GlistTodoListsData_listTodoLists_items> get items =>
      _$this._items ??=
          new ListBuilder<GlistTodoListsData_listTodoLists_items>();
  set items(ListBuilder<GlistTodoListsData_listTodoLists_items>? items) =>
      _$this._items = items;

  GlistTodoListsData_listTodoListsBuilder() {
    GlistTodoListsData_listTodoLists._initializeBuilder(this);
  }

  GlistTodoListsData_listTodoListsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodoListsData_listTodoLists other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodoListsData_listTodoLists;
  }

  @override
  void update(void Function(GlistTodoListsData_listTodoListsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodoListsData_listTodoLists build() {
    _$GlistTodoListsData_listTodoLists _$result;
    try {
      _$result = _$v ??
          new _$GlistTodoListsData_listTodoLists._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GlistTodoListsData_listTodoLists', 'G__typename'),
              items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GlistTodoListsData_listTodoLists', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlistTodoListsData_listTodoLists_items
    extends GlistTodoListsData_listTodoLists_items {
  @override
  final String G__typename;
  @override
  final String cuid;
  @override
  final String tid;
  @override
  final String? title;
  @override
  final String? status;
  @override
  final String priority;
  @override
  final int sortID;
  @override
  final String? memo;

  factory _$GlistTodoListsData_listTodoLists_items(
          [void Function(GlistTodoListsData_listTodoLists_itemsBuilder)?
              updates]) =>
      (new GlistTodoListsData_listTodoLists_itemsBuilder()..update(updates))
          .build();

  _$GlistTodoListsData_listTodoLists_items._(
      {required this.G__typename,
      required this.cuid,
      required this.tid,
      this.title,
      this.status,
      required this.priority,
      required this.sortID,
      this.memo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GlistTodoListsData_listTodoLists_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        cuid, 'GlistTodoListsData_listTodoLists_items', 'cuid');
    BuiltValueNullFieldError.checkNotNull(
        tid, 'GlistTodoListsData_listTodoLists_items', 'tid');
    BuiltValueNullFieldError.checkNotNull(
        priority, 'GlistTodoListsData_listTodoLists_items', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        sortID, 'GlistTodoListsData_listTodoLists_items', 'sortID');
  }

  @override
  GlistTodoListsData_listTodoLists_items rebuild(
          void Function(GlistTodoListsData_listTodoLists_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlistTodoListsData_listTodoLists_itemsBuilder toBuilder() =>
      new GlistTodoListsData_listTodoLists_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlistTodoListsData_listTodoLists_items &&
        G__typename == other.G__typename &&
        cuid == other.cuid &&
        tid == other.tid &&
        title == other.title &&
        status == other.status &&
        priority == other.priority &&
        sortID == other.sortID &&
        memo == other.memo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), cuid.hashCode),
                            tid.hashCode),
                        title.hashCode),
                    status.hashCode),
                priority.hashCode),
            sortID.hashCode),
        memo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GlistTodoListsData_listTodoLists_items')
          ..add('G__typename', G__typename)
          ..add('cuid', cuid)
          ..add('tid', tid)
          ..add('title', title)
          ..add('status', status)
          ..add('priority', priority)
          ..add('sortID', sortID)
          ..add('memo', memo))
        .toString();
  }
}

class GlistTodoListsData_listTodoLists_itemsBuilder
    implements
        Builder<GlistTodoListsData_listTodoLists_items,
            GlistTodoListsData_listTodoLists_itemsBuilder> {
  _$GlistTodoListsData_listTodoLists_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _cuid;
  String? get cuid => _$this._cuid;
  set cuid(String? cuid) => _$this._cuid = cuid;

  String? _tid;
  String? get tid => _$this._tid;
  set tid(String? tid) => _$this._tid = tid;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  int? _sortID;
  int? get sortID => _$this._sortID;
  set sortID(int? sortID) => _$this._sortID = sortID;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  GlistTodoListsData_listTodoLists_itemsBuilder() {
    GlistTodoListsData_listTodoLists_items._initializeBuilder(this);
  }

  GlistTodoListsData_listTodoLists_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cuid = $v.cuid;
      _tid = $v.tid;
      _title = $v.title;
      _status = $v.status;
      _priority = $v.priority;
      _sortID = $v.sortID;
      _memo = $v.memo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlistTodoListsData_listTodoLists_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlistTodoListsData_listTodoLists_items;
  }

  @override
  void update(
      void Function(GlistTodoListsData_listTodoLists_itemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GlistTodoListsData_listTodoLists_items build() {
    final _$result = _$v ??
        new _$GlistTodoListsData_listTodoLists_items._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GlistTodoListsData_listTodoLists_items', 'G__typename'),
            cuid: BuiltValueNullFieldError.checkNotNull(
                cuid, 'GlistTodoListsData_listTodoLists_items', 'cuid'),
            tid: BuiltValueNullFieldError.checkNotNull(
                tid, 'GlistTodoListsData_listTodoLists_items', 'tid'),
            title: title,
            status: status,
            priority: BuiltValueNullFieldError.checkNotNull(
                priority, 'GlistTodoListsData_listTodoLists_items', 'priority'),
            sortID: BuiltValueNullFieldError.checkNotNull(
                sortID, 'GlistTodoListsData_listTodoLists_items', 'sortID'),
            memo: memo);
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteTodoListData extends GdeleteTodoListData {
  @override
  final String G__typename;
  @override
  final GdeleteTodoListData_deleteTodoList? deleteTodoList;

  factory _$GdeleteTodoListData(
          [void Function(GdeleteTodoListDataBuilder)? updates]) =>
      (new GdeleteTodoListDataBuilder()..update(updates)).build();

  _$GdeleteTodoListData._({required this.G__typename, this.deleteTodoList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GdeleteTodoListData', 'G__typename');
  }

  @override
  GdeleteTodoListData rebuild(
          void Function(GdeleteTodoListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteTodoListDataBuilder toBuilder() =>
      new GdeleteTodoListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteTodoListData &&
        G__typename == other.G__typename &&
        deleteTodoList == other.deleteTodoList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), deleteTodoList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GdeleteTodoListData')
          ..add('G__typename', G__typename)
          ..add('deleteTodoList', deleteTodoList))
        .toString();
  }
}

class GdeleteTodoListDataBuilder
    implements Builder<GdeleteTodoListData, GdeleteTodoListDataBuilder> {
  _$GdeleteTodoListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GdeleteTodoListData_deleteTodoListBuilder? _deleteTodoList;
  GdeleteTodoListData_deleteTodoListBuilder get deleteTodoList =>
      _$this._deleteTodoList ??=
          new GdeleteTodoListData_deleteTodoListBuilder();
  set deleteTodoList(
          GdeleteTodoListData_deleteTodoListBuilder? deleteTodoList) =>
      _$this._deleteTodoList = deleteTodoList;

  GdeleteTodoListDataBuilder() {
    GdeleteTodoListData._initializeBuilder(this);
  }

  GdeleteTodoListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteTodoList = $v.deleteTodoList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteTodoListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteTodoListData;
  }

  @override
  void update(void Function(GdeleteTodoListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GdeleteTodoListData build() {
    _$GdeleteTodoListData _$result;
    try {
      _$result = _$v ??
          new _$GdeleteTodoListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GdeleteTodoListData', 'G__typename'),
              deleteTodoList: _deleteTodoList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteTodoList';
        _deleteTodoList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GdeleteTodoListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteTodoListData_deleteTodoList
    extends GdeleteTodoListData_deleteTodoList {
  @override
  final String G__typename;
  @override
  final String cuid;
  @override
  final String? memo;
  @override
  final String priority;
  @override
  final String? status;
  @override
  final String tid;
  @override
  final String? title;
  @override
  final int sortID;

  factory _$GdeleteTodoListData_deleteTodoList(
          [void Function(GdeleteTodoListData_deleteTodoListBuilder)?
              updates]) =>
      (new GdeleteTodoListData_deleteTodoListBuilder()..update(updates))
          .build();

  _$GdeleteTodoListData_deleteTodoList._(
      {required this.G__typename,
      required this.cuid,
      this.memo,
      required this.priority,
      this.status,
      required this.tid,
      this.title,
      required this.sortID})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GdeleteTodoListData_deleteTodoList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        cuid, 'GdeleteTodoListData_deleteTodoList', 'cuid');
    BuiltValueNullFieldError.checkNotNull(
        priority, 'GdeleteTodoListData_deleteTodoList', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        tid, 'GdeleteTodoListData_deleteTodoList', 'tid');
    BuiltValueNullFieldError.checkNotNull(
        sortID, 'GdeleteTodoListData_deleteTodoList', 'sortID');
  }

  @override
  GdeleteTodoListData_deleteTodoList rebuild(
          void Function(GdeleteTodoListData_deleteTodoListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteTodoListData_deleteTodoListBuilder toBuilder() =>
      new GdeleteTodoListData_deleteTodoListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteTodoListData_deleteTodoList &&
        G__typename == other.G__typename &&
        cuid == other.cuid &&
        memo == other.memo &&
        priority == other.priority &&
        status == other.status &&
        tid == other.tid &&
        title == other.title &&
        sortID == other.sortID;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), cuid.hashCode),
                            memo.hashCode),
                        priority.hashCode),
                    status.hashCode),
                tid.hashCode),
            title.hashCode),
        sortID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GdeleteTodoListData_deleteTodoList')
          ..add('G__typename', G__typename)
          ..add('cuid', cuid)
          ..add('memo', memo)
          ..add('priority', priority)
          ..add('status', status)
          ..add('tid', tid)
          ..add('title', title)
          ..add('sortID', sortID))
        .toString();
  }
}

class GdeleteTodoListData_deleteTodoListBuilder
    implements
        Builder<GdeleteTodoListData_deleteTodoList,
            GdeleteTodoListData_deleteTodoListBuilder> {
  _$GdeleteTodoListData_deleteTodoList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _cuid;
  String? get cuid => _$this._cuid;
  set cuid(String? cuid) => _$this._cuid = cuid;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _tid;
  String? get tid => _$this._tid;
  set tid(String? tid) => _$this._tid = tid;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _sortID;
  int? get sortID => _$this._sortID;
  set sortID(int? sortID) => _$this._sortID = sortID;

  GdeleteTodoListData_deleteTodoListBuilder() {
    GdeleteTodoListData_deleteTodoList._initializeBuilder(this);
  }

  GdeleteTodoListData_deleteTodoListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cuid = $v.cuid;
      _memo = $v.memo;
      _priority = $v.priority;
      _status = $v.status;
      _tid = $v.tid;
      _title = $v.title;
      _sortID = $v.sortID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteTodoListData_deleteTodoList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteTodoListData_deleteTodoList;
  }

  @override
  void update(
      void Function(GdeleteTodoListData_deleteTodoListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GdeleteTodoListData_deleteTodoList build() {
    final _$result = _$v ??
        new _$GdeleteTodoListData_deleteTodoList._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GdeleteTodoListData_deleteTodoList', 'G__typename'),
            cuid: BuiltValueNullFieldError.checkNotNull(
                cuid, 'GdeleteTodoListData_deleteTodoList', 'cuid'),
            memo: memo,
            priority: BuiltValueNullFieldError.checkNotNull(
                priority, 'GdeleteTodoListData_deleteTodoList', 'priority'),
            status: status,
            tid: BuiltValueNullFieldError.checkNotNull(
                tid, 'GdeleteTodoListData_deleteTodoList', 'tid'),
            title: title,
            sortID: BuiltValueNullFieldError.checkNotNull(
                sortID, 'GdeleteTodoListData_deleteTodoList', 'sortID'));
    replace(_$result);
    return _$result;
  }
}

class _$GupdateTodoListData extends GupdateTodoListData {
  @override
  final String G__typename;
  @override
  final GupdateTodoListData_updateTodoList? updateTodoList;

  factory _$GupdateTodoListData(
          [void Function(GupdateTodoListDataBuilder)? updates]) =>
      (new GupdateTodoListDataBuilder()..update(updates)).build();

  _$GupdateTodoListData._({required this.G__typename, this.updateTodoList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GupdateTodoListData', 'G__typename');
  }

  @override
  GupdateTodoListData rebuild(
          void Function(GupdateTodoListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateTodoListDataBuilder toBuilder() =>
      new GupdateTodoListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateTodoListData &&
        G__typename == other.G__typename &&
        updateTodoList == other.updateTodoList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateTodoList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateTodoListData')
          ..add('G__typename', G__typename)
          ..add('updateTodoList', updateTodoList))
        .toString();
  }
}

class GupdateTodoListDataBuilder
    implements Builder<GupdateTodoListData, GupdateTodoListDataBuilder> {
  _$GupdateTodoListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateTodoListData_updateTodoListBuilder? _updateTodoList;
  GupdateTodoListData_updateTodoListBuilder get updateTodoList =>
      _$this._updateTodoList ??=
          new GupdateTodoListData_updateTodoListBuilder();
  set updateTodoList(
          GupdateTodoListData_updateTodoListBuilder? updateTodoList) =>
      _$this._updateTodoList = updateTodoList;

  GupdateTodoListDataBuilder() {
    GupdateTodoListData._initializeBuilder(this);
  }

  GupdateTodoListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateTodoList = $v.updateTodoList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateTodoListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateTodoListData;
  }

  @override
  void update(void Function(GupdateTodoListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateTodoListData build() {
    _$GupdateTodoListData _$result;
    try {
      _$result = _$v ??
          new _$GupdateTodoListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GupdateTodoListData', 'G__typename'),
              updateTodoList: _updateTodoList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateTodoList';
        _updateTodoList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GupdateTodoListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateTodoListData_updateTodoList
    extends GupdateTodoListData_updateTodoList {
  @override
  final String G__typename;
  @override
  final String cuid;
  @override
  final String? memo;
  @override
  final String priority;
  @override
  final String? status;
  @override
  final String tid;
  @override
  final String? title;
  @override
  final int sortID;

  factory _$GupdateTodoListData_updateTodoList(
          [void Function(GupdateTodoListData_updateTodoListBuilder)?
              updates]) =>
      (new GupdateTodoListData_updateTodoListBuilder()..update(updates))
          .build();

  _$GupdateTodoListData_updateTodoList._(
      {required this.G__typename,
      required this.cuid,
      this.memo,
      required this.priority,
      this.status,
      required this.tid,
      this.title,
      required this.sortID})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GupdateTodoListData_updateTodoList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        cuid, 'GupdateTodoListData_updateTodoList', 'cuid');
    BuiltValueNullFieldError.checkNotNull(
        priority, 'GupdateTodoListData_updateTodoList', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        tid, 'GupdateTodoListData_updateTodoList', 'tid');
    BuiltValueNullFieldError.checkNotNull(
        sortID, 'GupdateTodoListData_updateTodoList', 'sortID');
  }

  @override
  GupdateTodoListData_updateTodoList rebuild(
          void Function(GupdateTodoListData_updateTodoListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateTodoListData_updateTodoListBuilder toBuilder() =>
      new GupdateTodoListData_updateTodoListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateTodoListData_updateTodoList &&
        G__typename == other.G__typename &&
        cuid == other.cuid &&
        memo == other.memo &&
        priority == other.priority &&
        status == other.status &&
        tid == other.tid &&
        title == other.title &&
        sortID == other.sortID;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), cuid.hashCode),
                            memo.hashCode),
                        priority.hashCode),
                    status.hashCode),
                tid.hashCode),
            title.hashCode),
        sortID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateTodoListData_updateTodoList')
          ..add('G__typename', G__typename)
          ..add('cuid', cuid)
          ..add('memo', memo)
          ..add('priority', priority)
          ..add('status', status)
          ..add('tid', tid)
          ..add('title', title)
          ..add('sortID', sortID))
        .toString();
  }
}

class GupdateTodoListData_updateTodoListBuilder
    implements
        Builder<GupdateTodoListData_updateTodoList,
            GupdateTodoListData_updateTodoListBuilder> {
  _$GupdateTodoListData_updateTodoList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _cuid;
  String? get cuid => _$this._cuid;
  set cuid(String? cuid) => _$this._cuid = cuid;

  String? _memo;
  String? get memo => _$this._memo;
  set memo(String? memo) => _$this._memo = memo;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _tid;
  String? get tid => _$this._tid;
  set tid(String? tid) => _$this._tid = tid;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _sortID;
  int? get sortID => _$this._sortID;
  set sortID(int? sortID) => _$this._sortID = sortID;

  GupdateTodoListData_updateTodoListBuilder() {
    GupdateTodoListData_updateTodoList._initializeBuilder(this);
  }

  GupdateTodoListData_updateTodoListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cuid = $v.cuid;
      _memo = $v.memo;
      _priority = $v.priority;
      _status = $v.status;
      _tid = $v.tid;
      _title = $v.title;
      _sortID = $v.sortID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateTodoListData_updateTodoList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateTodoListData_updateTodoList;
  }

  @override
  void update(
      void Function(GupdateTodoListData_updateTodoListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateTodoListData_updateTodoList build() {
    final _$result = _$v ??
        new _$GupdateTodoListData_updateTodoList._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GupdateTodoListData_updateTodoList', 'G__typename'),
            cuid: BuiltValueNullFieldError.checkNotNull(
                cuid, 'GupdateTodoListData_updateTodoList', 'cuid'),
            memo: memo,
            priority: BuiltValueNullFieldError.checkNotNull(
                priority, 'GupdateTodoListData_updateTodoList', 'priority'),
            status: status,
            tid: BuiltValueNullFieldError.checkNotNull(
                tid, 'GupdateTodoListData_updateTodoList', 'tid'),
            title: title,
            sortID: BuiltValueNullFieldError.checkNotNull(
                sortID, 'GupdateTodoListData_updateTodoList', 'sortID'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
