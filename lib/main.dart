import 'package:flutter/material.dart';
import 'package:sliver_appbar/SliverAppBarExample.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverAppBarExample(),
    );
  }
}
