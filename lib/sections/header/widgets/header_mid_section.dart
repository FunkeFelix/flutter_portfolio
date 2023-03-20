import 'package:flutter/material.dart';
import 'package:portfolio/sections/header/widgets/glass_content.dart';
import 'package:portfolio/sections/header/widgets/menu_bar.dart';

class HeaderMidSection extends StatelessWidget {
  const HeaderMidSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: GlassContent(size: size)),
        const Spacer(flex: 3),
      ],
    );
  }
}
