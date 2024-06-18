import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'margin.dart';

@immutable
@JsonSerializable()
class BodyWidgetProps extends Equatable {
  final int? height;
  final int? width;
  final Margin? padding;
  final Margin? position;
  final Margin? margin;

  const BodyWidgetProps({
    this.height,
    this.width,
    this.padding,
    this.position,
    this.margin,
  });

  BodyWidgetProps copyWith({
    int? height,
    int? width,
    Margin? padding,
    Margin? position,
    Margin? margin,
  }) =>
      BodyWidgetProps(
        height: height ?? this.height,
        width: width ?? this.width,
        padding: padding ?? this.padding,
        position: position ?? this.position,
        margin: margin ?? this.margin,
      );

  @override
  List<Object?> get props => [height, width, padding, position, margin];
}
