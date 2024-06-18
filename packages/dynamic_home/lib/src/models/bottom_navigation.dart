import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'body_navigation_props.dart';

@immutable
@JsonSerializable()
class BottomNavigation extends Equatable {
  final String? type;
  @JsonKey(name: 'props')
  final BottomNavigationProps? bottomNavigationProps;

  const BottomNavigation({
    this.type,
    this.bottomNavigationProps,
  });

  BottomNavigation copyWith({
    String? type,
    BottomNavigationProps? bottomNavigationProps,
  }) =>
      BottomNavigation(
        type: type ?? this.type,
        bottomNavigationProps:
            bottomNavigationProps ?? this.bottomNavigationProps,
      );

  @override
  List<Object?> get props => [type, bottomNavigationProps];
}
