// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BiologyScreen extends StatefulWidget {
  const BiologyScreen({super.key});

  @override
  State<BiologyScreen> createState() => _BiologyScreenState();
}

class _BiologyScreenState extends State<BiologyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Biology')],
      ),
    );
  }
}
