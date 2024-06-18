// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Size _$SizeFromJson(Map<String, dynamic> json) => Size(
      grid: json['grid'] == null
          ? null
          : Grid.fromJson(json['grid'] as Map<String, dynamic>),
      list: json['list'] == null
          ? null
          : Grid.fromJson(json['list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SizeToJson(Size instance) => <String, dynamic>{
      'grid': instance.grid,
      'list': instance.list,
    };
