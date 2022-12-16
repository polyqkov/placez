import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../common/app_border_grade.dart';
import '../../common/app_border_shape.dart';
import '../../common/app_color_scheme_helper.dart';
import '../../common/app_text_styles.dart';

class AppTextfield extends StatefulWidget {
  AppTextfield({
    Key? key,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.textAlign,
    this.hintText,
    this.maxLength,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final TextAlign? textAlign;
  final String? hintText;
  final int? maxLength;

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: ShapeDecoration(
        color: AppColorSchemeHelper.getColorScheme(context).secondary,
        shape:
            AppBorderShape.getShape(cornerRadius: AppBorderGrade.smallBorder),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: TextFormField(
          controller: widget.controller,
          maxLength: widget.maxLength,
          keyboardType: widget.keyboardType,
          textAlign: widget.textAlign ?? TextAlign.start,
          style: AppTextStyle.bodyRegular.copyWith(
            color: AppColorSchemeHelper.getColorScheme(context).primary,
          ),
          textAlignVertical: TextAlignVertical.bottom,
          onChanged: widget.onChanged,
          cursorHeight: 20,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: (widget.hintText ?? '').tr(),
            contentPadding: EdgeInsets.only(bottom: 15),
            hintStyle: AppTextStyle.bodyRegular.copyWith(
              color: AppColorSchemeHelper.getColorScheme(context).tertiary,
            ),
            counterText: '',
          ),
        ),
      ),
    );
  }
}
