import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';

class MenuBar extends StatefulWidget {
  final Size size;
  final Function onMenuTap;
  const MenuBar({super.key, required this.size, required this.onMenuTap});
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "About",
    "Skills",
    "Projects",
    "References",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 1100),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            widget.onMenuTap(menuItems[index]);
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 122),
          height: 90,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown[800],
                  decoration:
                      hoverIndex == index ? TextDecoration.underline : null,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ],
          ),
        ),
      );
}
