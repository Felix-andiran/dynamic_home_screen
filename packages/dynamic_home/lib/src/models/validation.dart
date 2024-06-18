import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class Validation extends Equatable {
  final bool? mandatory;

  const Validation({
    this.mandatory,
  });

  Validation copyWith({
    bool? mandatory,
  }) =>
      Validation(
        mandatory: mandatory ?? this.mandatory,
      );

  @override
  List<Object?> get props => [mandatory];
}
