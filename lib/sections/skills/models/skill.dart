class Skill {
  final String name;
  final List<String> categories;
  final String experience;

  Skill({
    required this.name,
    required this.categories,
    this.experience = '',
  });

  static List<String> allCategories = [
    'Languages',
    'Frameworks',
    'Tools',
    'Characteristics',
    'Database',
  ];
}
