import 'package:flutter/material.dart';
import 'package:portfolio/widgets/cards/project_card.dart';
import 'package:portfolio/widgets/text/headline_3.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final List<Map<String, dynamic>> allProjects = [
    {
      'title': 'Software Engineer',
      'subtitle': 'AUDO LLC, San José, USA',
      'image': 'images/audo_overview.png',
      'icon': 'images/audo_logo.png',
      'color': const Color(0xFF5D9CEC)
    },
    {
      'title': 'Frontend Software Engineer',
      'subtitle': 'Netcentric, Berlin',
      'image': 'images/placeholder_projects.jpg',
      'icon': 'images/netcentric_logo.png',
      'color': const Color(0xFF2ECC71)
    },
    {
      'title': 'Teaching Assistant',
      'subtitle': 'Ironhack, Berlin',
      'image': 'images/placeholder_projects.jpg',
      'icon': 'images/ironhack_logo.png',
      'color': const Color(0xFFFFCE54)
    },
    {
      'title': 'Jr. Software Engineer',
      'subtitle': 'Dubé, Berlin',
      'image': 'images/placeholder_projects.jpg',
      'icon': 'images/netcentric_logo.png',
      'color': const Color(0xFFFC6E51)
    },
    {
      'title': 'Sales Executive',
      'subtitle': 'mySPOTTi GmbH, Munich',
      'image': 'images/placeholder_projects.jpg',
      'icon': 'images/myspotti_logo.png',
      'color': const Color(0xFFED5565),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [Headline3(text: 'PROJECTS')],
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: ProjectCards(
              height: 400,
              items: allProjects,
            ),
          ),
        ],
      ),
    );
  }
}
