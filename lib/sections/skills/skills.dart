import 'package:flutter/material.dart';
import 'package:portfolio/sections/skills/models/skill.dart';
import 'package:portfolio/sections/skills/widgets/skills_grid.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/widgets/text/headline_3.dart';

List<Skill> skills = [
  Skill(name: 'Flutter', categories: ['Frameworks']),
  Skill(name: 'Dart', categories: ['Languages']),
  Skill(name: 'React', categories: ['Frameworks']),
  Skill(name: 'Node.js', categories: ['Languages']),
  Skill(name: 'MongoDB', categories: ['Tools']),
  Skill(name: 'Express.js', categories: ['Frameworks']),
  Skill(name: 'JavaScript', categories: ['Languages']),
  Skill(name: 'TypeScript', categories: ['Languages']),
  Skill(name: 'VS Code', categories: ['Tools']),
  Skill(name: 'Android Studio', categories: ['Tools']),
  Skill(name: 'Xcode', categories: ['Tools']),
  Skill(name: 'Git', categories: ['Tools']),
  Skill(name: 'GitHub', categories: ['Tools']),
  Skill(name: 'AWS', categories: ['Tools']),
  Skill(name: 'JIRA', categories: ['Tools']),
  Skill(name: 'Confluence', categories: ['Tools']),
  Skill(name: 'Slack', categories: ['Tools']),
  Skill(name: 'ClickUp', categories: ['Tools']),
  Skill(name: 'Figma', categories: ['Tools']),
  Skill(name: 'Problem Solving', categories: ['Characteristics']),
  Skill(name: 'Teamwork', categories: ['Characteristics']),
  Skill(name: 'Communication', categories: ['Characteristics']),
  Skill(name: 'Leadership', categories: ['Characteristics']),
  Skill(name: 'Creativity', categories: ['Characteristics']),
  Skill(name: 'Adaptability', categories: ['Characteristics']),
  Skill(name: 'Organization', categories: ['Characteristics']),
  Skill(name: 'Time Management', categories: ['Characteristics']),
  Skill(name: 'Attention to Detail', categories: ['Characteristics']),
  Skill(name: 'Self Motivation', categories: ['Characteristics']),
];

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [Headline3(text: 'SKILLS')],
        ).paddingOnly(bottom: 24),
        SizedBox(
          width: 1000,
          height: 650,
          child: SkillsGrid(skills: skills, allCategories: Skill.allCategories),
        ),
      ],
    );
  }
}
