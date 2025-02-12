import 'package:flutter/material.dart';
import 'package:first_app/screens/static_page.dart';
import 'package:first_app/screens/interactive_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: const InteractivePage(),
    );
  }
}
