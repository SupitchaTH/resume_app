import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/homepage/home_screen.controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenCtrl controller;

  @override
  void initState() {
    controller = HomeScreenCtrl(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenCtrl>(
      create: (context) => controller,
      child: Consumer<HomeScreenCtrl>(
        builder: (context, con, child) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Let\'s start at the beginning',
                    style: ThemeClass.textTheme.displayMedium,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: con.goInside,
                  child: Text(
                    'Start',
                    style: ThemeClass.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
