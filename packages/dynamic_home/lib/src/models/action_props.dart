import 'package:dynamic_home/src/models/margin.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class ActionProps extends Equatable {
  final String? alignment;
  final Margin? padding;
  final Margin? position;
  final Margin? margin;

  const ActionProps({
    this.alignment,
    this.padding,
    this.position,
    this.margin,
  });

  ActionProps copyWith({
    String? alignment,
    Margin? padding,
    Margin? position,
    Margin? margin,
  }) {
    return ActionProps(
        alignment: alignment ?? this.alignment, margin: margin ?? this.margin);
  }

  @override
  List<Object?> get props => [alignment, padding, position, margin];
}
