import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key? key,
    this.style,
    this.padding,
    this.alignment,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Align(
        alignment: alignment ?? Alignment.center,
        child: Text(
          text,
          style: style,
          textAlign: textAlign,
        ).tr(),
      ),
    );
  }
}
