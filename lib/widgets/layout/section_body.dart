import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class SectionBody extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const SectionBody({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: child,
    ).paddingOnly(top: 100);
  }
}
