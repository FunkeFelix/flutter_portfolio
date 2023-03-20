import 'package:flutter/material.dart';

class SocialCard extends StatefulWidget {
  final String iconSrc, name;
  final Color color;
  final Function onTap;
  const SocialCard({
    Key? key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: (() => widget.onTap()),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: 24 / 2,
            horizontal: 24 * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
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
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 20,
                width: 20,
              ),
              SizedBox(width: 24),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
