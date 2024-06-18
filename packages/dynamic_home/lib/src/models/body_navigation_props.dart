import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'icon_theme.dart';
import 'item.dart';
import 'style.dart';

@immutable
@JsonSerializable()
class BottomNavigationProps extends Equatable {
  final String? backgroundColor;
  final int? currentIndex;
  final int? elevation;
  final int? iconSize;
  final List<Item>? items;
  final int? selectedFontSize;
  final IconTheme? selectedIconTheme;
  final String? selectedItemColor;
  final Style? selectedLabelStyle;
  final bool? showSelectedLabels;
  final bool? showUnselectedLabels;
  final int? unselectedFontSize;
  final IconTheme? unselectedIconTheme;
  final String? unselectedItemColor;
  final Style? unselectedLabelStyle;

  const BottomNavigationProps({
    this.backgroundColor,
    this.currentIndex,
    this.elevation,
    this.iconSize,
    this.items,
    this.selectedFontSize,
    this.selectedIconTheme,
    this.selectedItemColor,
    this.selectedLabelStyle,
    this.showSelectedLabels,
    this.showUnselectedLabels,
    this.unselectedFontSize,
    this.unselectedIconTheme,
    this.unselectedItemColor,
    this.unselectedLabelStyle,
  });

  BottomNavigationProps copyWith({
    String? backgroundColor,
    int? currentIndex,
    int? elevation,
    int? iconSize,
    List<Item>? items,
    int? selectedFontSize,
    IconTheme? selectedIconTheme,
    String? selectedItemColor,
    Style? selectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    int? unselectedFontSize,
    IconTheme? unselectedIconTheme,
    String? unselectedItemColor,
    Style? unselectedLabelStyle,
  }) =>
      BottomNavigationProps(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        currentIndex: currentIndex ?? this.currentIndex,
        elevation: elevation ?? this.elevation,
        iconSize: iconSize ?? this.iconSize,
        items: items ?? this.items,
        selectedFontSize: selectedFontSize ?? this.selectedFontSize,
        selectedIconTheme: selectedIconTheme ?? this.selectedIconTheme,
        selectedItemColor: selectedItemColor ?? this.selectedItemColor,
        selectedLabelStyle: selectedLabelStyle ?? this.selectedLabelStyle,
        showSelectedLabels: showSelectedLabels ?? this.showSelectedLabels,
        showUnselectedLabels: showUnselectedLabels ?? this.showUnselectedLabels,
        unselectedFontSize: unselectedFontSize ?? this.unselectedFontSize,
        unselectedIconTheme: unselectedIconTheme ?? this.unselectedIconTheme,
        unselectedItemColor: unselectedItemColor ?? this.unselectedItemColor,
        unselectedLabelStyle: unselectedLabelStyle ?? this.unselectedLabelStyle,
      );

  @override
  List<Object?> get props => [
        backgroundColor,
        currentIndex,
        elevation,
        iconSize,
        items,
        selectedFontSize,
        selectedIconTheme,
        selectedItemColor,
        selectedLabelStyle,
        showSelectedLabels,
        showUnselectedLabels,
        unselectedFontSize,
        unselectedIconTheme,
        unselectedItemColor,
        unselectedLabelStyle
      ];
}
