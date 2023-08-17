import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:resume_app/model/biology.dart';
import 'package:url_launcher/url_launcher.dart';

class BiologyController extends ChangeNotifier {
  BuildContext context;
  BiologyController(this.context);

  Biology biology = Biology(
    name: 'Supitcha',
    surname: 'Theppithak',
    email: 'supitcha.theppithak@gmail.com',
    github: 'https://github.com/SupitchaTH',
    phone: '0614979329',
    graduated: 'Bachelor\'s degree',
    education: 'Srinakharinwirot University',
    thesis: 'The Development of Robot for Healthcare Service',
    skills: [
      Skills(
        softskills: [
          'Accountability',
          'Adaptability ',
          'Curiosity',
          'Problem Solving',
          'Self-learning',
          'Team Communication',
          'Time Management',
        ],
        hardskills: [
          Hardskills(
            hardskill: 'Flutter',
            hardskilllevel: 'Intermediate',
          ),
          Hardskills(
            hardskill: 'C',
            hardskilllevel: 'Intermediate',
          ),
          Hardskills(
            hardskill: 'Python',
            hardskilllevel: 'basic',
          ),
          Hardskills(
            hardskill: 'Solidity',
            hardskilllevel: 'basic',
          ),
          Hardskills(
            hardskill: 'Microsoft word',
            hardskilllevel: 'Intermediate',
          ),
          Hardskills(
            hardskill: 'Touch-typing',
            hardskilllevel: 'Intermediate',
          ),
        ],
      ),
    ],
    languages: [
      Language(language: 'Thai', level: 'Native'),
      Language(language: 'English', level: 'Intermediate')
    ],
    experiences: [
      Experience(experience: 'Trainee', organization: 'MIND center'),
      Experience(experience: 'Trainee', organization: 'ERP SWU'),
      Experience(
          experience: 'Research project',
          organization: 'Srinakharinwirot University'),
      Experience(experience: 'Freelance', organization: 'ALPHA NEX CO., LTD.'),
    ],
    Skills: [],
  );

  launchPhone() async {
    await FlutterPhoneDirectCaller.callNumber(biology.phone);
  }

  launchURL() async {
    Uri url = Uri.parse('${biology.github}');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw {
        "code": 5000,
        "error_title": "Launch URL",
        "error_msg": "Fail to launch URL",
      };
    }
  }
}
