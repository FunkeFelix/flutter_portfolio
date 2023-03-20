import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text/body_one.dart';

class ExperienceCard extends StatelessWidget {
  final String numOfExp;

  const ExperienceCard({
    Key? key,
    required this.numOfExp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: const Color(0x00c67f43),
        borderRadius: BorderRadius.circular(24),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0x00b2723c),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              color: const Color(0x00c67f43).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = const Color(0x0059391e).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: const Color(0x0059391e).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20 / 2),
            const BodyOneText(
              text: "Years of Experience",
            )
          ],
        ),
      ),
    );
  }
}
