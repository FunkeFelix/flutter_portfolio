import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/widgets/cards/reference_card.dart';
import 'package:portfolio/widgets/text/headline_3.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  static List<Map<String, dynamic>> allReferences = [
    {
      'author': 'Manfred Mies',
      'company': 'mySPOTTi GmbH, Munich',
      'description':
          '"Mr. Funke exceeded our expectations by completing the tasks assigned to him with utmost analytical accuracy and professionalism. His work left a lasting impact on our organization"',
      'assetUrl': 'assets/images/manfred_mies.png',
    },
    {
      'author': 'Andrew Jensen',
      'company': 'AUDO LLC, San José, USA',
      'description':
          '"In addition to Felix\'s technical skills, he is a highly motivated and collaborative team member, always willing to go the extra mile to ensure that a project is completed on time and to the highest possible standard."',
      'assetUrl': 'assets/images/andrew_jensen.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [Headline3(text: 'REFERENCES')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var reference in allReferences)
                ReferenceCard(
                  company: reference['company'],
                  author: reference['author'],
                  description: reference['description'],
                  assetUrl: reference['assetUrl'],
                ).paddingOnly(right: 24),
            ],
          )
        ],
      ),
    );
  }
}
