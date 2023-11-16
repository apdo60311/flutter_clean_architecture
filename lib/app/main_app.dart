import 'package:flutter/material.dart';
import 'package:flutter_mvp/view/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp._init();
  static const MainApp _initial = MainApp._init();
  factory MainApp() => _initial;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
