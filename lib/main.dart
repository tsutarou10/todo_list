import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/app.dart';

void main() {
  const flavor = String.fromEnvironment('FLAVOR');
  print(flavor); // dev
  runApp(ProviderScope(child: App()));
}
