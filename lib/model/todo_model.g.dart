// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDoItem _$_$_ToDoItemFromJson(Map<String, dynamic> json) {
  return _$_ToDoItem(
    tid: json['tid'] as String,
    title: json['title'] as String,
    status: _$enumDecode(_$StatusEnumMap, json['status']),
    memo: json['memo'] as String?,
    createdAt: json['createdAt'] as int?,
    updatedAt: json['updatedAt'] as int?,
    priority: _$enumDecodeNullable(_$PriorityEnumMap, json['priority']),
    hidden: json['hidden'] as bool?,
  );
}

Map<String, dynamic> _$_$_ToDoItemToJson(_$_ToDoItem instance) =>
    <String, dynamic>{
      'tid': instance.tid,
      'title': instance.title,
      'status': _$StatusEnumMap[instance.status],
      'memo': instance.memo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'priority': _$PriorityEnumMap[instance.priority],
      'hidden': instance.hidden,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$StatusEnumMap = {
  Status.TODO: 'TODO',
  Status.IN_PROGRESS: 'IN_PROGRESS',
  Status.DONE: 'DONE',
};

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$PriorityEnumMap = {
  Priority.HIGH: 'HIGH',
  Priority.MID: 'MID',
  Priority.LOW: 'LOW',
};
