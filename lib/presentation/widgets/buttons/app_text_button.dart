import 'package:flutter/material.dart';

import '../../common/app_border_grade.dart';
import '../../common/app_border_shape.dart';
import '../../common/app_color_scheme_helper.dart';
import '../../common/app_text_styles.dart';
import '../animates/app_tap_animate.dart';
import '../base/app_text.dart';

class AppTextButton extends StatefulWidget {
  AppTextButton({
    Key? key,
    required this.title,
    this.style,
    this.onTap,
  }) : super(key: key);

  final String title;
  final TextStyle? style;
  final void Function()? onTap;

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  @override
  Widget build(BuildContext context) {
    return AppTapAnimate(
      onTap: widget.onTap,
      pressedScale: 0.95,
      isButton: true,
      child: Container(
        decoration: ShapeDecoration(
          shape:
              AppBorderShape.getShape(cornerRadius: AppBorderGrade.smallBorder),
        ),
        child: Center(
          child: AppText(
            widget.title,
            style: widget.style ??
                AppTextStyle.subheadMedium.copyWith(
                  color: AppColorSchemeHelper.getColorScheme(context).primary,
                ),
          ),
        ),
      ),
    );
  }
}
