import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class BodyWidgetUserPreference extends Equatable {
  @JsonKey(name: 'grid_view')
  final bool? gridView;
  final List<dynamic>? filter;
  @JsonKey(name: 'sort_by')
  final List<dynamic>? sortBy;

  const BodyWidgetUserPreference({
    this.gridView,
    this.filter,
    this.sortBy,
  });

  BodyWidgetUserPreference copyWith({
    bool? gridView,
    List<dynamic>? filter,
    List<dynamic>? sortBy,
  }) =>
      BodyWidgetUserPreference(
        gridView: gridView ?? this.gridView,
        filter: filter ?? this.filter,
        sortBy: sortBy ?? this.sortBy,
      );

  @override
  List<Object?> get props => [gridView, filter, sortBy];
}
