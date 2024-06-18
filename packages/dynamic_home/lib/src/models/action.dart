import 'package:dynamic_home/src/models/action_props.dart';
import 'package:dynamic_home/src/models/icon.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class Action extends Equatable {
  final String? type;
  final String? fieldType;
  @JsonKey(name: 'props')
  final ActionProps? actionProps;
  final String? name;
  final Icon? icon;
  final String? path;

  const Action({
    this.type,
    this.fieldType,
    this.actionProps,
    this.name,
    this.icon,
    this.path,
  });

  Action copyWith({
    String? type,
    String? fieldType,
    ActionProps? actionProps,
    String? name,
    Icon? icon,
    String? path,
  }) {
    return Action(
        fieldType: fieldType ?? this.fieldType,
        icon: icon ?? this.icon,
        name: name ?? this.name,
        path: path ?? this.path,
        actionProps: actionProps ?? this.actionProps);
  }

  @override
  List<Object?> get props => [type, fieldType, actionProps, name, icon, path];
}
