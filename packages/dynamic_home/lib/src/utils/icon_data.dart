import 'package:flutter/material.dart';

IconData getIcon(String input) {
  switch (input) {
    case 'home':
      return Icons.home;
    case 'profile':
      return Icons.person;
    case 'menu':
      return Icons.home;
    case 'add':
      return Icons.add;
    case 'settings':
      return Icons.settings;
    case 'account':
      return Icons.account_circle;
    default:
      return Icons.error;
  }
}
