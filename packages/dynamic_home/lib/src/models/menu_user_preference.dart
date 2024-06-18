import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class MenuUserPreference extends Equatable {
  final bool? gridView;

  const MenuUserPreference({
    this.gridView,
  });

  MenuUserPreference copyWith({
    bool? gridView,
  }) =>
      MenuUserPreference(
        gridView: gridView ?? this.gridView,
      );

  @override
  List<Object?> get props => [gridView];
}
