import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

import '../common/app_color_scheme_helper.dart';
import '../common/app_icons.dart';
import '../common/app_media_query_padding_helper.dart';
import '../common/app_offset_box.dart';
import '../common/app_padding_grade.dart';
import '../common/app_text_styles.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/app_text.dart';
import '../widgets/buttons/app_filled_text_button.dart';
import '../widgets/buttons/app_icon_button.dart';
import '../widgets/textfields/app_textfield.dart';

class OtpScreenView extends StatefulWidget {
  OtpScreenView({Key? key}) : super(key: key);

  @override
  State<OtpScreenView> createState() => _OtpScreenViewState();
}

class _OtpScreenViewState extends State<OtpScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      paddingBottom: AppMediaQueryPaddingHelper.getPadding(context).bottom,
      paddingLeft: AppPaddingGrade.regularPadding,
      paddingRight: AppPaddingGrade.regularPadding,
      child: Column(
        children: [
          AppOffsetBox.heightLargeBox,
          AppText(
            'verify_your_number',
            alignment: Alignment.topLeft,
            style: AppTextStyle.largeTitleSemibold.copyWith(
                color: AppColorSchemeHelper.getColorScheme(context).primary),
          ),
          AppOffsetBox.heightMediumBox,
          AppTextfield(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            hintText: 'otp_hint',
            maxLength: 6,
            autofocus: true,
            autofillHints: [AutofillHints.oneTimeCode],
          ),
          AppOffsetBox.heightMediumBox,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    'send_to',
                    alignment: Alignment.topLeft,
                    style: AppTextStyle.bodyMedium.copyWith(
                        color: AppColorSchemeHelper.getColorScheme(context)
                            .tertiary),
                  ),
                  AppText(
                    '+7 (999) 803 - 60 - 40',
                    alignment: Alignment.topLeft,
                    style: AppTextStyle.bodyMedium.copyWith(
                        color: AppColorSchemeHelper.getColorScheme(context)
                            .tertiary),
                  ),
                ],
              ),
              AppOffsetBox.heightSmallBox,
              // AppTextButton(
              //         title: 'resend',
              //         style: AppTextStyle.bodyMedium.copyWith(
              //             color: AppColorSchemeHelper.getColorScheme(context)
              //                 .primary),
              //         onTap: () {
              //         },
              //       ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    'resend_text',
                    alignment: Alignment.topLeft,
                    style: AppTextStyle.bodyMedium.copyWith(
                        color: AppColorSchemeHelper.getColorScheme(context)
                            .tertiary),
                  ),
                  AppText(
                    '29',
                    alignment: Alignment.topLeft,
                    style: AppTextStyle.bodyMedium.copyWith(
                        color: AppColorSchemeHelper.getColorScheme(context)
                            .primary),
                  ),
                  AppText(
                    'sec',
                    alignment: Alignment.topLeft,
                    style: AppTextStyle.bodyMedium.copyWith(
                        color: AppColorSchemeHelper.getColorScheme(context)
                            .tertiary),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              AppIconButton(
                icon: AppIcons.arrowLeft,
                onTap: () {
                  context.vRouter.pop();
                },
              ),
              AppOffsetBox.widthRegularBox,
              Expanded(
                child: AppFilledTextButton(
                  title: 'continue',
                  onTap: () {
                    // context.vRouter.to('otp_screen');
                  },
                ),
              ),
            ],
          ),
          AppOffsetBox.heightRegularBox,
        ],
      ),
    );
  }
}
