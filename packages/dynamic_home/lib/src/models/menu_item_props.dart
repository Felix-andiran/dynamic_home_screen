import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'margin.dart';
import 'size.dart';

@immutable
@JsonSerializable()
class MenuItemPropsClass extends Equatable {
  final Size? size;
  final Margin? margin;

  const MenuItemPropsClass({
    this.size,
    this.margin,
  });

  MenuItemPropsClass copyWith({
    Size? size,
    Margin? margin,
  }) =>
      MenuItemPropsClass(
        size: size ?? this.size,
        margin: margin ?? this.margin,
      );

  @override
  List<Object?> get props => [size, margin];
}
