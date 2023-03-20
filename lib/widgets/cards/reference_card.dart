import 'package:flutter/material.dart';

class ReferenceCard extends StatefulWidget {
  final String company;
  final String description;
  final String assetUrl;
  final String author;
  const ReferenceCard({
    Key? key,
    required this.company,
    required this.description,
    required this.assetUrl,
    required this.author,
  }) : super(key: key);

  @override
  _ReferenceCardState createState() => _ReferenceCardState();
}

class _ReferenceCardState extends State<ReferenceCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: 20 * 3),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 450,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.brown[700],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isHover)
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
          ],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                  ],
                  image: DecorationImage(
                    image: AssetImage(widget.assetUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              widget.description,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24 * 2),
            Text(
              widget.author,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              widget.company,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
