// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Style _$StyleFromJson(Map<String, dynamic> json) => Style(
      fontSize: (json['fontSize'] as num?)?.toInt(),
      fontWeight: json['fontWeight'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$StyleToJson(Style instance) => <String, dynamic>{
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
      'color': instance.color,
    };
