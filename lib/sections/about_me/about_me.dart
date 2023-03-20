import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';
import 'package:portfolio/widgets/text/body_one.dart';
import 'package:portfolio/extensions/media_query_data_extension.dart';
import 'package:portfolio/widgets/text/headline_3.dart';

class AboutMe extends StatelessWidget {
  final double widgetWidth;
  AboutMe({super.key, required this.widgetWidth});

  final birthDay = DateTime(1994, DateTime.june, 1);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mq = MediaQuery.of(context);
    final int age = (birthDay.difference(DateTime.now()).inDays ~/ 365) * -1;
    final double width = widgetWidth / 4;

    return mq.getValueByWidth(
        xsValue: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context: context, width: widgetWidth, isMobile: true),
            _buildMobileAvatar(),
            _buildFirstTextContent(width: widgetWidth, age: age),
            const ExperienceCard(numOfExp: '10'),
            _buildSecondTextContent(width: widgetWidth),
          ],
        ),
        lValue: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildHeader(context: context, width: width),
              ],
            ).paddingOnly(bottom: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFirstTextContent(width: width, age: age),
                const ExperienceCard(numOfExp: '10'),
                _buildSecondTextContent(width: width)
              ],
            ),
          ],
        ));
  }

  Widget _buildHeader(
      {required BuildContext context,
      double width = 0,
      bool isMobile = false}) {
    return Row(
      mainAxisAlignment:
          isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: const [
        Headline3(text: 'ABOUT ME'),
      ],
    );
  }

  Widget _buildFirstTextContent({double width = 0, int age = 0}) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          BodyOneText(
            text:
                'I am Felix, a $age year old Software Engineer, from Ueberlingen, Germany.',
          ),
          const BodyOneText(
            text:
                'I combine my knowledge of business management with my passion for software development to create seemingly great user experiences.',
          ),
        ],
      ),
    ).paddingOnly(top: 24);
  }

  Widget _buildSecondTextContent({double width = 0}) {
    return SizedBox(
      width: width,
      child: Column(
        children: const [
          BodyOneText(
            text:
                'Already in my childhood I was drawn to the world of business and economics. After successfully completing my B.Sc. Business Management as well as working in sales I was drawn to my passion of technology.',
          ),
          BodyOneText(
            text:
                'This uniq combination of business and technology is what makes me a great asset to any team.',
          ),
        ],
      ),
    ).paddingOnly(top: 24);
  }

  Widget _buildMobileAvatar() {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("images/profile_picture.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
