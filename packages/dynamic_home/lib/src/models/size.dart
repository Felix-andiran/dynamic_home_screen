import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'models.dart';

part 'size.g.dart';

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

  factory Size.fromJson(JsonMap json) => _$SizeFromJson(json);
  JsonMap toJson() => _$SizeToJson(this);

  @override
  List<Object?> get props => [grid, list];
}
