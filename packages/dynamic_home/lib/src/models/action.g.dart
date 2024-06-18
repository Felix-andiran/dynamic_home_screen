// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Action _$ActionFromJson(Map<String, dynamic> json) => Action(
      type: json['type'] as String?,
      fieldType: json['fieldType'] as String?,
      actionProps: json['props'] == null
          ? null
          : ActionProps.fromJson(json['props'] as Map<String, dynamic>),
      name: json['name'] as String?,
      icon: json['icon'] == null
          ? null
          : Icon.fromJson(json['icon'] as Map<String, dynamic>),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$ActionToJson(Action instance) => <String, dynamic>{
      'type': instance.type,
      'fieldType': instance.fieldType,
      'props': instance.actionProps,
      'name': instance.name,
      'icon': instance.icon,
      'path': instance.path,
    };
