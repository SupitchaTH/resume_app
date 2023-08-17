// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/themeclass.dart';
import 'package:resume_app/screens/biologypage/biology_screen.controller.dart';

class ExperienceWidget extends StatefulWidget {
  const ExperienceWidget({super.key});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    const FirstExperiencePage(),
    const SecondExperiencePage(),
    const ThirdExperiencePage(),
    const FourthExperiencePage(),
  ];

  int _activePage = 0;

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Experiences',
                    style: ThemeClass.textTheme.displayMedium,
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _activePage = page;
                    });
                  },
                  itemCount: _pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _pages[index % _pages.length];
                  },
                ),
              ),
              Container(
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                      padding: EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: _activePage == index
                              ? Colors.white
                              : Colors.white30,
                        ),
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

class FirstExperiencePage extends StatelessWidget {
  const FirstExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Card(
          color: ThemeClass.lightTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(),
              Column(
                children: [
                  Text(
                    '${con.biology.experiences[0].experience}',
                    style: ThemeClass.textTheme.displayLarge,
                  ),
                  Text(
                    '${con.biology.experiences[0].organization}',
                    style: ThemeClass.textTheme.headlineSmall,
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}

class SecondExperiencePage extends StatelessWidget {
  const SecondExperiencePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Card(
          color: ThemeClass.lightTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(),
              Column(
                children: [
                  Text(
                    '${con.biology.experiences[1].experience}',
                    style: ThemeClass.textTheme.displayLarge,
                  ),
                  Text(
                    '${con.biology.experiences[1].organization}',
                    style: ThemeClass.textTheme.headlineSmall,
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}

class ThirdExperiencePage extends StatelessWidget {
  const ThirdExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Card(
          color: ThemeClass.lightTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      '${con.biology.experiences[2].experience}',
                      style: ThemeClass.textTheme.displayLarge,
                    ),
                  ),
                  Text(
                    '${con.biology.experiences[2].organization}',
                    style: ThemeClass.textTheme.headlineSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      '\"${con.biology.thesis}\"',
                      style: ThemeClass.textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}

class FourthExperiencePage extends StatelessWidget {
  const FourthExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BiologyController>(
      builder: (context, con, child) {
        return Card(
          color: ThemeClass.lightTheme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(),
              Column(
                children: [
                  Text(
                    '${con.biology.experiences[3].experience}',
                    style: ThemeClass.textTheme.displayLarge,
                  ),
                  Text(
                    '${con.biology.experiences[3].organization}',
                    style: ThemeClass.textTheme.headlineSmall,
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
