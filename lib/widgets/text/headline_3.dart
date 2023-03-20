import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class Headline3 extends StatelessWidget {
  final String text;
  const Headline3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    ).paddingOnly(top: 24, bottom: 24);
  }
}
