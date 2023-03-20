import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout/body.dart';
import 'package:portfolio/widgets/layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _currentTheme = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Kanit',
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _currentTheme,
      home: Layout(),
    );
  }

  void changeThemeCallBack(ThemeMode themeMode) {
    setState(() {
      _currentTheme = themeMode;
    });
  }
}
