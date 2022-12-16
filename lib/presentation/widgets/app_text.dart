import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key? key,
    this.style,
    this.padding,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        style: style,
      ).tr(),
    );
  }
}
