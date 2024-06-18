import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'models.dart';

part 'style.g.dart';

@immutable
@JsonSerializable()
class Style extends Equatable {
  final int? fontSize;
  final String? fontWeight;
  final String? color;

  const Style({
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  Style copyWith({
    int? fontSize,
    String? fontWeight,
    String? color,
  }) =>
      Style(
        fontSize: fontSize ?? this.fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
        color: color ?? this.color,
      );

factory Style.fromJson(JsonMap json) => _$StyleFromJson(json);
  JsonMap toJson() => _$StyleToJson(this);
  
  @override
  List<Object?> get props => [fontSize, fontWeight, color];
}
