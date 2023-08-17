import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/biologypage/biology_screen.controller.dart';

class LanguageskillWidget extends StatelessWidget {
  const LanguageskillWidget({super.key});

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
                    'Language skills',
                    style: ThemeClass.textTheme.displayMedium,
                  ),
                ),
              ),
              Card(
                color: ThemeClass.lightTheme.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text(
                            '${con.biology.languages[0].language} as ${con.biology.languages[0].level}',
                            style: ThemeClass.textTheme.headlineSmall,
                          ),
                          Spacer(),
                          Text(
                            '|',
                            style: ThemeClass.textTheme.headlineSmall,
                          ),
                          Spacer(),
                          Text(
                            '${con.biology.languages[1].language} as ${con.biology.languages[1].level}',
                            style: ThemeClass.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
