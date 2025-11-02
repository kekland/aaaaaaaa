import 'package:flmbgl/flmbgl.dart';
import 'package:flutter/material.dart';

void main() {
  test();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aaaaaaaa',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(body: FlMbglWidget()),
    );
  }
}
