import 'package:dynamic_home/src/models/menu_item_props.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class Favorite extends Equatable {
  @JsonKey(name: 'field_type')
  final String? fieldType;
  @JsonKey(name: 'field_value')
  final String? fieldValue;
  @JsonKey(name: 'props')
  final MenuItemPropsClass? menuItemProps;

  const Favorite({
    this.fieldType,
    this.fieldValue,
    this.menuItemProps,
  });

  Favorite copyWith({
    String? fieldType,
    String? fieldValue,
    MenuItemPropsClass? menuItemProps,
  }) =>
      Favorite(
        fieldType: fieldType ?? this.fieldType,
        fieldValue: fieldValue ?? this.fieldValue,
        menuItemProps: menuItemProps ?? this.menuItemProps,
      );

  @override
  List<Object?> get props => [fieldType, fieldValue, menuItemProps];
}
