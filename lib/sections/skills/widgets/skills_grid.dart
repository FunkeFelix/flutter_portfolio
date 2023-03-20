import 'package:flutter/material.dart';
import 'package:portfolio/sections/skills/models/skill.dart';
import 'package:portfolio/widgets/cards/skill_card.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class SkillsGrid extends StatefulWidget {
  final List<Skill> skills;
  final List<String> allCategories;

  const SkillsGrid({
    Key? key,
    required this.skills,
    required this.allCategories,
  });

  @override
  _SkillsGridState createState() => _SkillsGridState();
}

class _SkillsGridState extends State<SkillsGrid> {
  late List<String> _selectedCategories;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _selectedCategories = List.from(widget.allCategories);
  }

  @override
  Widget build(BuildContext context) {
    List<Skill> filteredSkills = widget.skills.where((skill) {
      final nameLower = skill.name.toLowerCase();
      final queryLower = _query.toLowerCase();
      final queryInName = nameLower.contains(queryLower);
      final queryInCategory =
          skill.categories.any((category) => category.contains(queryLower));
      final isMatch = queryInName || queryInCategory;

      final selectedCategorySet = _selectedCategories.toSet();
      final skillCategorySet = skill.categories.toSet();
      final isInSelectedCategories =
          skillCategorySet.intersection(selectedCategorySet).isNotEmpty;

      return isMatch && isInSelectedCategories;
    }).toList();

    return Column(
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              _query = value;
            });
          },
          decoration: const InputDecoration(
            hintText: 'Search skills',
            prefixIcon: Icon(Icons.search, color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
        ),
        Wrap(
          spacing: 8.0,
          children: widget.allCategories.map((category) {
            final isSelected = _selectedCategories.contains(category);
            return FilterChip(
              backgroundColor: Colors.brown[800],
              selectedColor: Colors.greenAccent[700],
              label: Text(category),
              selected: isSelected,
              onSelected: (isSelected) {
                setState(() {
                  if (isSelected) {
                    _selectedCategories.add(category);
                  } else {
                    _selectedCategories.remove(category);
                  }
                });
              },
            ).paddingAll(16);
          }).toList(),
        ),
        Expanded(
          child: filteredSkills.isEmpty
              ? const Center(
                  child: Text(
                    'No skills found',
                    style: TextStyle(fontSize: 16.0),
                  ),
                )
              : GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: 3,
                  children: filteredSkills.map((skill) {
                    return SkillCard(
                      skillName: skill.name,
                    );
                  }).toList(),
                ),
        ),
      ],
    );
  }
}
