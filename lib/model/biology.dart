// ignore_for_file: public_member_api_docs, sort_constructors_first
class Biology {
  late String name;
  late String surname;
  late String email;
  late String github;
  late String phone;
  late String graduated;
  late String education;
  late String thesis;
  late List<Skills> skills;
  late List<Experience> experiences;
  late List<Language> languages;
  Biology({
    required List<Object> Skills,
    required this.name,
    required this.surname,
    required this.email,
    required this.github,
    required this.phone,
    required this.graduated,
    required this.education,
    required this.thesis,
    required this.skills,
    required this.experiences,
    required this.languages,
  });
}

class Skills {
  List<String> softskills;
  List<Hardskills> hardskills;
  Skills({
    required this.softskills,
    required this.hardskills,
  });
}

class Hardskills {
  String hardskill;

  String hardskilllevel;

  Hardskills({
    required this.hardskill,
    required this.hardskilllevel,
  });
}

class Language {
  late String language;
  late String level;

  Language({
    required this.language,
    required this.level,
  });
}

class Experience {
  late String experience;
  late String organization;

  Experience({
    required this.experience,
    required this.organization,
  });
}
