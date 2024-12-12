import 'package:flutter/material.dart';
import 'package:ttm01_flutter_dependency_injection/ui/app.dart';

void main() {
  const flavor = String.fromEnvironment('FLAVOR');
  debugPrint('FLAVOR: $flavor');
  runApp(const MyApp(flavor: flavor));
}
