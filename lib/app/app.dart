import 'package:flutter/material.dart';
import 'package:pt1/app/theme/theme.dart';
import 'package:pt1/modules/counter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const CounterPage(),
    );
  }
}
