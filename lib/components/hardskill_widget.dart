// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/biologypage/biology_screen.controller.dart';

class HardskillWidget extends StatelessWidget {
  const HardskillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Card(
          color: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Hard skills',
                    style: ThemeClass.textTheme.displayMedium,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: con.biology.skills[0].hardskills.map((hardskill) {
                      return Container(
                        height: 60,
                        width: 500,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: ThemeClass.lightTheme.primaryColor,
                          elevation: 0,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  '• ${hardskill.hardskill}',
                                  style: ThemeClass.textTheme.headlineSmall,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  '${hardskill.hardskilllevel}',
                                  textAlign: TextAlign.start,
                                  style: ThemeClass.textTheme.headlineSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
