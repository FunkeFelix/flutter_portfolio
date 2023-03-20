import 'package:flutter/material.dart';
import 'package:portfolio/sections/about_me/about_me.dart';
import 'package:portfolio/sections/call_to_action/call_to_action.dart';
import 'package:portfolio/sections/contact_me/contact_me.dart';
import 'package:portfolio/sections/header/header.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/sections/projects/projects.dart';
import 'package:portfolio/sections/references/references.dart';
import 'package:portfolio/sections/skills/skills.dart';
import 'package:portfolio/widgets/dividers/wave_divider.dart';
import 'package:portfolio/widgets/layout/section_body.dart';

class Body extends StatelessWidget {
  final Function onMenuTap;
  const Body({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    const layoutWidth = 1000.0;
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Header(
          key: const Key('header'),
          onMenuTap: onMenuTap,
        ),
        SizedBox(
          width: layoutWidth,
          child: Column(
            children: [
              SectionBody(
                child: AboutMe(
                  key: const Key('aboutMe'),
                  widgetWidth: layoutWidth,
                ),
              ),
              const SectionBody(child: CallToAction()),
              const SectionBody(child: SkillsSection()),
              const SectionBody(child: Projects()),
              const SectionBody(child: References()).paddingOnly(
                bottom: 200,
              ),
              const SectionBody(
                child: WaveDivider(
                  color: Colors.white,
                  xOffset: 100,
                  yOffset: 200,
                ),
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 700,
                  ),
                  const ContactMeSection()
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
