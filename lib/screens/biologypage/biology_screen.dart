// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/detail_widget.dart';
import 'package:resume_app/components/experience_widget.dart';
import 'package:resume_app/components/hardskill_widget.dart';
import 'package:resume_app/components/language_skill_widget.dart';
import 'package:resume_app/components/softskill_widget.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/biologypage/biology_screen.controller.dart';

class BiologyScreen extends StatefulWidget {
  const BiologyScreen({super.key});

  @override
  State<BiologyScreen> createState() => _BiologyScreenState();
}

class _BiologyScreenState extends State<BiologyScreen> {
  late BiologyController controller;

  @override
  void initState() {
    controller = BiologyController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BiologyController>(
      create: (context) => controller,
      child: Consumer<BiologyController>(
        builder: (context, con, child) {
          return Scaffold(
            backgroundColor: ThemeClass.lightTheme.primaryColor,
            body: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue[200],
                    backgroundImage: AssetImage('assets/images/Jodfair_1.jpg'),
                    maxRadius: 50,
                  ),
                ),
                DetailWidget(),
                SizedBox(
                  height: 10,
                ),
                LanguageskillWidget(),
                SizedBox(
                  height: 10,
                ),
                SoftskillWidget(),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: HardskillWidget()),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: ExperienceWidget()),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
