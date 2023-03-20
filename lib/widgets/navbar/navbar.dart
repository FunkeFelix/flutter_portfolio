import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/main.dart';

class Navbar extends StatelessWidget with PreferredSizeWidget {
  final bool isDarkMode;
  const Navbar({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              const TextSpan(
                text: 'F',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'elix',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          RichText(
            text: TextSpan(children: [
              const TextSpan(
                text: 'F',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'unke',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          )
        ],
      ).paddingOnly(left: 16),
      title: const Center(child: Text('Portfolio')),
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 20,
      actions: [
        _actionItem(Icons.contact_mail, 'CONTACT ME', () => null, Colors.white),
        _actionItem(
          isDarkMode ? Icons.light_mode : Icons.dark_mode,
          'CHANGE THEME',
          () => MyApp.of(context).changeThemeCallBack(
            isDarkMode ? ThemeMode.light : ThemeMode.dark,
          ),
          Colors.white,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(500, 50);

  static double get height => 100;
}

Widget _actionItem(
    IconData icon, String tooltip, Function() onPressed, Color color) {
  return IconButton(
    icon: Icon(icon),
    onPressed: onPressed,
    splashColor: Colors.amber,
    tooltip: tooltip,
    color: color,
  ).paddingOnly(right: 16);
}
