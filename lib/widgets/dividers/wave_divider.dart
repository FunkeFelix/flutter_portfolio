import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaveDivider extends StatelessWidget {
  final double waveHeight;
  final String svgPath;
  final Color color;
  final double width;

  const WaveDivider({
    Key? key,
    this.waveHeight = 20,
    this.width = double.infinity,
    this.svgPath = 'assets/images/waves.svg',
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      height: waveHeight,
      width: width,
      fit: BoxFit.fill,
      color: color,
    );
  }
}
