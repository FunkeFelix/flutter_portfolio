import 'dart:math';
import 'package:flutter/material.dart';

class WaveDivider extends StatelessWidget {
  final double waveHeight;
  final double waveLength;
  final double xOffset;
  final double yOffset;
  final Color color;

  const WaveDivider({
    Key? key,
    this.waveHeight = 20,
    this.waveLength = 200,
    this.xOffset = 0,
    this.yOffset = 0,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(
        waveHeight: waveHeight,
        waveLength: waveLength,
        xOffset: xOffset,
        yOffset: yOffset,
        color: color,
      ),
      child: Container(
        height: waveHeight * 2,
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double waveHeight;
  final double waveLength;
  final double xOffset;
  final double yOffset;
  final Color color;

  WavePainter({
    this.waveHeight = 20,
    this.waveLength = 200,
    this.xOffset = 0,
    this.yOffset = 0,
    this.color = Colors.grey,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    path.moveTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final y = waveHeight * sin((i / waveLength * pi) + xOffset) + yOffset;
      path.lineTo(i, size.height - y);
    }

    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WavePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
