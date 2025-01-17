import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class Margin extends Equatable {
  final int? top;
  final int? bottom;
  final int? left;
  final int? right;

  const Margin({
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  Margin copyWith({
    int? top,
    int? bottom,
    int? left,
    int? right,
  }) =>
      Margin(
        top: top ?? this.top,
        bottom: bottom ?? this.bottom,
        left: left ?? this.left,
        right: right ?? this.right,
      );

  @override
  List<Object?> get props => [top, left, right, bottom];
}
