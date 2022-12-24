import 'package:flutter/material.dart';
import 'package:placez/presentation/common/app_border_grade.dart';
import 'package:placez/presentation/common/app_border_shape.dart';
import 'package:placez/presentation/common/app_color_scheme_helper.dart';
import 'package:placez/presentation/common/app_text_styles.dart';
import 'package:placez/presentation/widgets/animates/app_tap_animate.dart';
import 'package:placez/presentation/widgets/base/app_text.dart';

class AppFilledTextButton extends StatefulWidget {
  AppFilledTextButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  State<AppFilledTextButton> createState() => _AppFilledTextButtonState();
}

class _AppFilledTextButtonState extends State<AppFilledTextButton> {
  @override
  Widget build(BuildContext context) {
    return AppTapAnimate(
      onTap: widget.onTap,
      pressedScale: 0.95,
      isButton: true,
      child: Container(
        decoration: ShapeDecoration(
          color: AppColorSchemeHelper.getColorScheme(context).primary,
          shape:
              AppBorderShape.getShape(cornerRadius: AppBorderGrade.smallBorder),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
          child: Center(
            child: AppText(
              widget.title,
              style: AppTextStyle.subheadMedium.copyWith(
                color: AppColorSchemeHelper.getColorScheme(context).onPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
