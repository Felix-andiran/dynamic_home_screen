import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class Grid extends Equatable {
  final int? height;
  final int? width;

  const Grid({
    this.height,
    this.width,
  });

  Grid copyWith({
    int? height,
    int? width,
  }) =>
      Grid(
        height: height ?? this.height,
        width: width ?? this.width,
      );

  @override
  List<Object?> get props => [height, width];
}
