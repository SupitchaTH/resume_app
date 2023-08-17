import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/biologypage/biology_screen.controller.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  '${con.biology.name} ${con.biology.surname}',
                  style: ThemeClass.textTheme.headlineMedium,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: ThemeClass.textTheme.titleSmall,
                  text: "Phone: ${con.biology.phone}",
                  recognizer: TapGestureRecognizer()..onTap = con.launchPhone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  '${con.biology.email}',
                  style: ThemeClass.textTheme.headlineSmall,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: ThemeClass.textTheme.titleSmall,
                  text: "Github: SupitchaTH",
                  recognizer: TapGestureRecognizer()..onTap = con.launchURL,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
