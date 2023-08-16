import 'package:flutter/material.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/homepage/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      home: const HomeScreen(),
    );
  }
}
