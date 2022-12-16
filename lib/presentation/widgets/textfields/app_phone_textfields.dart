import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';

import '../../common/app_border_grade.dart';
import '../../common/app_border_shape.dart';
import '../../common/app_color_scheme_helper.dart';
import '../../common/app_country_icons.dart';
import '../../common/app_offset_box.dart';
import '../../common/app_padding_grade.dart';
import '../../common/app_text_styles.dart';

class AppPhoneTextfield extends StatefulWidget {
  AppPhoneTextfield({
    Key? key,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  State<AppPhoneTextfield> createState() => _AppPhoneTextfieldState();
}

class _AppPhoneTextfieldState extends State<AppPhoneTextfield> {
  String icon = AppPhoneCountryIcons.icons.values.first;

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
        child: Row(
          children: [
            SizedBox(
              width: AppPaddingGrade.regularPadding,
              child: Text(
                icon,
                style: AppTextStyle.title3Regular,
              ),
            ),
            AppOffsetBox.widthSmallBox,
            Expanded(
              child: TextFormField(
                controller: widget.controller,
                keyboardType: TextInputType.phone,
                style: AppTextStyle.bodyRegular.copyWith(
                  color: AppColorSchemeHelper.getColorScheme(context).primary,
                ),
                textAlignVertical: TextAlignVertical.bottom,
                onChanged: (val) {
                  var phoneCode = val
                      .replaceAll('(', '')
                      .replaceAll(')', '')
                      .replaceAll(' ', '')
                      .replaceAll('+', '');
                  AppPhoneCountryIcons.icons.forEach((key, value) {
                    if (key == phoneCode) {
                      setState(() {
                        icon = value;
                      });
                    }
                  });
                  try {
                    widget.onChanged!(val);
                  } catch (e) {}
                },
                autovalidateMode: AutovalidateMode.always,
                inputFormatters: [
                  PhoneInputFormatter(allowEndlessPhone: false),
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[()]*[0-9]*[+]*[ ]*'),
                    replacementString: ' - ',
                  ),
                ],
                cursorHeight: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'phone_hint'.tr(),
                  contentPadding: EdgeInsets.only(bottom: 16.5),
                  hintStyle: AppTextStyle.bodyRegular.copyWith(
                    color:
                        AppColorSchemeHelper.getColorScheme(context).tertiary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
