import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class NormalButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final EdgeInsets? padding;
  final IconData? icon;
  const NormalButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.brown,
    this.foregroundColor,
    this.elevation,
    this.padding,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      child: icon != null
          ? Row(
              children: [
                Icon(icon, size: 20).paddingOnly(right: 10),
                Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ).paddingAll(8)
          : Text(
              text,
              style: const TextStyle(fontSize: 20),
            ).paddingAll(8),
    ).paddingOnly(top: 20, right: 48);
  }
}
