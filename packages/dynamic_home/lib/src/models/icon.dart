import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'models.dart';

part 'icon.g.dart';

@immutable
@JsonSerializable()
class Icon extends Equatable {
  final String? package;
  @JsonKey(name: 'icon_name')
  final String? iconName;

  const Icon({
    this.package,
    this.iconName,
  });

  Icon copyWith({
    String? package,
    String? iconName,
  }) =>
      Icon(
        package: package ?? this.package,
        iconName: iconName ?? this.iconName,
      );

  factory Icon.fromJson(JsonMap json) => _$IconFromJson(json);
  JsonMap toJson() => _$IconToJson(this);

  @override
  List<Object?> get props => [package, iconName];
}
