import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class SectionBody extends StatelessWidget {
  final Widget child;

  const SectionBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    ).paddingOnly(top: 100);
  }
}
