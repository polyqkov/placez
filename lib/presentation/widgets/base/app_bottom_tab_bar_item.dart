import 'package:flutter/material.dart';

class AppBottomTabBarItem extends StatelessWidget {
  const AppBottomTabBarItem({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 32,
    );
  }
}
