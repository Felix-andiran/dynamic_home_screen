import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'icon.dart';

@immutable
@JsonSerializable()
class MenuList extends Equatable {
  final Type? type;
  final String? labelName;
  final Icon? icon;
  final String? bgColor;
  final String? path;
  final bool? favorites;
  final int? index;

  const MenuList({
    this.type,
    this.labelName,
    this.icon,
    this.bgColor,
    this.path,
    this.favorites,
    this.index,
  });

  MenuList copyWith({
    Type? type,
    String? labelName,
    Icon? icon,
    String? bgColor,
    String? path,
    bool? favorites,
    int? index,
  }) =>
      MenuList(
        type: type ?? this.type,
        labelName: labelName ?? this.labelName,
        icon: icon ?? this.icon,
        bgColor: bgColor ?? this.bgColor,
        path: path ?? this.path,
        favorites: favorites ?? this.favorites,
        index: index ?? this.index,
      );

  @override
  List<Object?> get props =>
      [type, labelName, icon, bgColor, path, favorites, index];
}
