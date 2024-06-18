import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'action.dart';
import 'appbar_props.dart';

@immutable
@JsonSerializable()
class AppbarWidget extends Equatable {
  final String? type;
  @JsonKey(name: 'props')
  final AppbarWidgetProps? actionProps;
  final List<Action>? leading;
  final List<Action>? actions;

  const AppbarWidget({
    this.type,
    this.actionProps,
    this.leading,
    this.actions,
  });

  AppbarWidget copyWith({
    String? type,
    AppbarWidgetProps? actionProps,
    List<Action>? leading,
    List<Action>? actions,
  }) =>
      AppbarWidget(
        type: type ?? this.type,
        actionProps: actionProps ?? this.actionProps,
        leading: leading ?? this.leading,
        actions: actions ?? this.actions,
      );

  @override
  List<Object?> get props => [type, actionProps, leading, actions];
}
