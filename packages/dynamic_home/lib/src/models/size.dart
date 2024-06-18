import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'grid.dart';

@immutable
@JsonSerializable()
class Size extends Equatable {
  final Grid? grid;
  final Grid? list;

  const Size({
    this.grid,
    this.list,
  });

  Size copyWith({
    Grid? grid,
    Grid? list,
  }) =>
      Size(
        grid: grid ?? this.grid,
        list: list ?? this.list,
      );

  @override
  List<Object?> get props => [grid, list];
}
