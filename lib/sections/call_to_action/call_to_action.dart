import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/widgets/buttons/normal_button.dart';
import 'package:universal_html/html.dart' as html;

class CallToAction extends StatelessWidget {
  const CallToAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _contactMe() {
      MyApp.of(context).changeThemeCallBack(ThemeMode.dark);
    }

    String fileUrl =
        'https://funkefelixportfolio.s3.eu-central-1.amazonaws.com/felix_funke-resume-2023-en.pdf';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        NormalButton(
          text: 'CONTACT ME',
          onPressed: () => _contactMe(),
          icon: Icons.contact_mail,
        ),
        NormalButton(
          text: 'DOWNLOAD CV',
          onPressed: () => html.window.open(fileUrl, "_blank"),
          icon: Icons.download,
        )
      ],
    );
  }
}
