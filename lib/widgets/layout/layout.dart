import 'package:flutter/material.dart';
import 'package:portfolio/widgets/layout/body.dart';

class Layout extends StatelessWidget {
  Layout({
    super.key,
  });
  final ScrollController _controller = ScrollController();

  void scrollCallBack(String selectedSection) {
    switch (selectedSection) {
      case 'About':
        _controller.animateTo(
          500,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 'Skills':
        _controller.animateTo(
          1300,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 'Projects':
        _controller.animateTo(
          2500,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 'References':
        _controller.animateTo(
          3000,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      case 'Contact':
        _controller.animateTo(
          3500,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        break;
      default:
        _controller.animateTo(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Body(
          key: const Key('body'),
          onMenuTap: scrollCallBack,
        ),
      ),
    );
  }
}
