import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/biologypage/biology_screen.controller.dart';

class SoftskillWidget extends StatelessWidget {
  const SoftskillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Card(
          color: Theme.of(context).colorScheme.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Soft skills',
                    style: ThemeClass.textTheme.displayMedium,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: con.biology.skills[0].softskills.map((softskill) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Chip(
                        backgroundColor: ThemeClass.lightTheme.primaryColor,
                        avatar: CircleAvatar(
                          backgroundColor:
                              ThemeClass.lightTheme.colorScheme.secondary,
                          child: Text(
                            softskill[0].toUpperCase(),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        elevation: 3,
                        label: Text(
                          softskill,
                          style: ThemeClass.textTheme.headlineSmall,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
