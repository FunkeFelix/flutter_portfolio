import 'package:flutter/material.dart';

class BodyOneText extends StatelessWidget {
  final String text;
  const BodyOneText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 16,
          ),
    );
  }
}
