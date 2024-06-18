import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class PlaceHolder extends Equatable {
  final String? language;
  final String? value;

  const PlaceHolder({
    this.language,
    this.value,
  });

  PlaceHolder copyWith({
    String? language,
    String? value,
  }) =>
      PlaceHolder(
        language: language ?? this.language,
        value: value ?? this.value,
      );

  @override
  List<Object?> get props => [language, value];
}
