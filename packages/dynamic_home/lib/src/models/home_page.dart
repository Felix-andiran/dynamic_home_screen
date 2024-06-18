import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'home.dart';
import 'home_widgets.dart';

@immutable
@JsonSerializable()
class HomePageData extends Equatable {
  final Home? home;
  final HomeWidgets? homeWidgets;

  const HomePageData({
    this.home,
    this.homeWidgets,
  });

  HomePageData copyWith({
    Home? home,
    HomeWidgets? homeWidgets,
  }) =>
      HomePageData(
        home: home ?? this.home,
        homeWidgets: homeWidgets ?? this.homeWidgets,
      );

  @override
  List<Object?> get props => [home, homeWidgets];
}
