import 'package:flutter/material.dart';
import 'package:resume_app/screens/biologypage/biology_screen.dart';

class HomeScreenCtrl extends ChangeNotifier {
  BuildContext context;
  HomeScreenCtrl(this.context);

  void goInside() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BiologyScreen()));
  }
}
