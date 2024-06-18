
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

@immutable
@JsonSerializable()
class Home extends Equatable {
  @JsonKey(name: 'field_value')
  final String? fieldValue;
  final String? page;
  final String? path;

  const Home({
    this.fieldValue,
    this.page,
    this.path,
  });

  Home copyWith({
    String? fieldValue,
    String? page,
    String? path,
  }) {
    return Home(
        fieldValue: fieldValue ?? this.fieldValue,
        page: page ?? this.page,
        path: page ?? this.path);
  }

  @override
  List<Object?> get props => [fieldValue, page, path];
}
