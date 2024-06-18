import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class IconTheme extends Equatable {
  final String? color;
  final int? size;

  const IconTheme({
    this.color,
    this.size,
  });

  IconTheme copyWith({
    String? color,
    int? size,
  }) =>
      IconTheme(
        color: color ?? this.color,
        size: size ?? this.size,
      );

  @override
  List<Object?> get props => [color, size];
}
