import 'package:flutter/material.dart';
import 'package:portfolio/sections/header/widgets/header_mid_section.dart';
import 'package:portfolio/extensions/media_query_data_extension.dart';
import 'package:portfolio/sections/header/widgets/menu_bar.dart';

class Header extends StatelessWidget {
  final Function onMenuTap;
  const Header({super.key, required this.onMenuTap});
  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 800),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/background.jpg"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        width: 1200,
        child: Stack(
          children: [
            HeaderMidSection(size: mq.size),
            mq.getValueByWidth(
              xsValue: Container(),
              lValue: Positioned(
                bottom: 0,
                right: 25,
                child: Container(
                  constraints:
                      const BoxConstraints(maxWidth: 500, maxHeight: 860),
                  child: Image.asset("images/profile_picture.png"),
                ),
              ),
            ),
            mq.getValueByWidth(
              xsValue: Container(),
              lValue: Positioned(
                bottom: 0,
                left: 50,
                child: CustomMenuBar(
                  size: mq.size,
                  onMenuTap: onMenuTap,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
