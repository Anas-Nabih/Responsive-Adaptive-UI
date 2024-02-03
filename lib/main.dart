import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Adaptive UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(),
    );
  }
}

class ResponsiveAdaptiveUI extends StatelessWidget {
  const ResponsiveAdaptiveUI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Text("Responsive Adaptive UI"),
    ),);
  }
}

