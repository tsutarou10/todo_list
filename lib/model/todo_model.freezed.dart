// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDoItem _$ToDoItemFromJson(Map<String, dynamic> json) {
  return _ToDoItem.fromJson(json);
}

/// @nodoc
class _$ToDoItemTearOff {
  const _$ToDoItemTearOff();

  _ToDoItem call(
      {@JsonKey(name: 'tid') required String tid,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'status') required Status status,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'createdAt') int? createdAt,
      @JsonKey(name: 'updatedAt') int? updatedAt,
      @JsonKey(name: 'priority') Priority? priority,
      @JsonKey(name: 'hidden') bool? hidden}) {
    return _ToDoItem(
      tid: tid,
      title: title,
      status: status,
      memo: memo,
      createdAt: createdAt,
      updatedAt: updatedAt,
      priority: priority,
      hidden: hidden,
    );
  }

  ToDoItem fromJson(Map<String, Object> json) {
    return ToDoItem.fromJson(json);
  }
}

/// @nodoc
const $ToDoItem = _$ToDoItemTearOff();

/// @nodoc
mixin _$ToDoItem {
  @JsonKey(name: 'tid')
  String get tid => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  Status get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'memo')
  String? get memo => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  Priority? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'hidden')
  bool? get hidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoItemCopyWith<ToDoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoItemCopyWith<$Res> {
  factory $ToDoItemCopyWith(ToDoItem value, $Res Function(ToDoItem) then) =
      _$ToDoItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'tid') String tid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'status') Status status,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'createdAt') int? createdAt,
      @JsonKey(name: 'updatedAt') int? updatedAt,
      @JsonKey(name: 'priority') Priority? priority,
      @JsonKey(name: 'hidden') bool? hidden});
}

/// @nodoc
class _$ToDoItemCopyWithImpl<$Res> implements $ToDoItemCopyWith<$Res> {
  _$ToDoItemCopyWithImpl(this._value, this._then);

  final ToDoItem _value;
  // ignore: unused_field
  final $Res Function(ToDoItem) _then;

  @override
  $Res call({
    Object? tid = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? memo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? priority = freezed,
    Object? hidden = freezed,
  }) {
    return _then(_value.copyWith(
      tid: tid == freezed
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ToDoItemCopyWith<$Res> implements $ToDoItemCopyWith<$Res> {
  factory _$ToDoItemCopyWith(_ToDoItem value, $Res Function(_ToDoItem) then) =
      __$ToDoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'tid') String tid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'status') Status status,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'createdAt') int? createdAt,
      @JsonKey(name: 'updatedAt') int? updatedAt,
      @JsonKey(name: 'priority') Priority? priority,
      @JsonKey(name: 'hidden') bool? hidden});
}

/// @nodoc
class __$ToDoItemCopyWithImpl<$Res> extends _$ToDoItemCopyWithImpl<$Res>
    implements _$ToDoItemCopyWith<$Res> {
  __$ToDoItemCopyWithImpl(_ToDoItem _value, $Res Function(_ToDoItem) _then)
      : super(_value, (v) => _then(v as _ToDoItem));

  @override
  _ToDoItem get _value => super._value as _ToDoItem;

  @override
  $Res call({
    Object? tid = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? memo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? priority = freezed,
    Object? hidden = freezed,
  }) {
    return _then(_ToDoItem(
      tid: tid == freezed
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDoItem extends _ToDoItem with DiagnosticableTreeMixin {
  const _$_ToDoItem(
      {@JsonKey(name: 'tid') required this.tid,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'memo') this.memo,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'priority') this.priority,
      @JsonKey(name: 'hidden') this.hidden})
      : super._();

  factory _$_ToDoItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ToDoItemFromJson(json);

  @override
  @JsonKey(name: 'tid')
  final String tid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'status')
  final Status status;
  @override
  @JsonKey(name: 'memo')
  final String? memo;
  @override
  @JsonKey(name: 'createdAt')
  final int? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final int? updatedAt;
  @override
  @JsonKey(name: 'priority')
  final Priority? priority;
  @override
  @JsonKey(name: 'hidden')
  final bool? hidden;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToDoItem(tid: $tid, title: $title, status: $status, memo: $memo, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority, hidden: $hidden)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToDoItem'))
      ..add(DiagnosticsProperty('tid', tid))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('memo', memo))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('hidden', hidden));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToDoItem &&
            (identical(other.tid, tid) ||
                const DeepCollectionEquality().equals(other.tid, tid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(hidden);

  @JsonKey(ignore: true)
  @override
  _$ToDoItemCopyWith<_ToDoItem> get copyWith =>
      __$ToDoItemCopyWithImpl<_ToDoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ToDoItemToJson(this);
  }
}

abstract class _ToDoItem extends ToDoItem {
  const factory _ToDoItem(
      {@JsonKey(name: 'tid') required String tid,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'status') required Status status,
      @JsonKey(name: 'memo') String? memo,
      @JsonKey(name: 'createdAt') int? createdAt,
      @JsonKey(name: 'updatedAt') int? updatedAt,
      @JsonKey(name: 'priority') Priority? priority,
      @JsonKey(name: 'hidden') bool? hidden}) = _$_ToDoItem;
  const _ToDoItem._() : super._();

  factory _ToDoItem.fromJson(Map<String, dynamic> json) = _$_ToDoItem.fromJson;

  @override
  @JsonKey(name: 'tid')
  String get tid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  Status get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'memo')
  String? get memo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'createdAt')
  int? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updatedAt')
  int? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'priority')
  Priority? get priority => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'hidden')
  bool? get hidden => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToDoItemCopyWith<_ToDoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
