import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/widgets/cards/social_card.dart';
import 'package:portfolio/widgets/forms/contact_me_form.dart';
import 'package:universal_html/html.dart' as html;

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 700,
        width: 600,
        child: Column(
          children: [
            Text(
              'Contact Me',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.brown[800]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialCard(
                  iconSrc: 'assets/images/linkedin_logo.png',
                  name: 'LinkedIn',
                  color: Colors.blue,
                  onTap: () => html.window.open(
                      'https://www.linkedin.com/in/felix-funke-b1a9561b3/',
                      'LinkedIn'),
                ),
                SocialCard(
                  iconSrc: 'assets/images/github_logo.png',
                  name: 'GitHub',
                  color: Colors.black,
                  onTap: () => html.window
                      .open('https://github.com/FunkeFelix', 'GitHub'),
                ),
              ],
            ).paddingOnly(top: 24),
            const ContactMeForm()
          ],
        ),
      ),
    );
  }
}
