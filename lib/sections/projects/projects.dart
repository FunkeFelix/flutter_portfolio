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
      'image': 'assets/images/audo_overview.png',
      'icon': 'assets/images/audo_logo.png',
    },
    {
      'title': 'Frontend Software Engineer',
      'subtitle': 'Netcentric, Berlin',
      'image': 'assets/images/kia_overview.png',
      'icon': 'assets/images/netcentric_logo.png',
    },
    {
      'title': 'Teaching Assistant',
      'subtitle': 'Ironhack, Berlin',
      'image': 'assets/images/overview_ironhack.png',
      'icon': 'assets/images/ironhack_logo.png',
    },
    {
      'title': 'Jr. Software Engineer',
      'subtitle': 'Dubé, Berlin',
      'image': 'assets/images/overview_dube.png',
      'icon': 'assets/images/dube_logo.png',
      'color': Colors.grey.withOpacity(0.8)
    },
    {
      'title': 'Sales Executive',
      'subtitle': 'mySPOTTi GmbH, Munich',
      'image': 'assets/images/overview_myspotti.png',
      'icon': 'assets/images/myspotti_logo.png',
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
