import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../common/app_color_scheme_helper.dart';
import '../common/app_offset_box.dart';
import '../common/app_padding_grade.dart';
import '../common/app_text_styles.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/app_text.dart';
import '../widgets/buttons/app_filled_text_button.dart';
import '../widgets/textfields/app_phone_textfields.dart';

class LogInScreenView extends StatefulWidget {
  LogInScreenView({Key? key}) : super(key: key);

  @override
  State<LogInScreenView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LogInScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          children: [
            AppOffsetBox.heightLargeBox,
            AppText(
              'whats_your_number',
              alignment: Alignment.topLeft,
              style: AppTextStyle.largeTitleSemibold.copyWith(
                  color: AppColorSchemeHelper.getColorScheme(context).primary),
            ),
            AppOffsetBox.heightMediumBox,
            AppPhoneTextfield(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: AppPaddingGrade.regularPadding,
                right: AppPaddingGrade.regularPadding,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'agreeing_text'.tr(),
                      style: AppTextStyle.captionMedium.copyWith(
                          color: AppColorSchemeHelper.getColorScheme(context)
                              .tertiary),
                    ),
                    TextSpan(
                      text: 'terms_of_service'.tr(),
                      style: AppTextStyle.captionMedium.copyWith(
                          color: AppColorSchemeHelper.getColorScheme(context)
                              .primary),
                    ),
                    TextSpan(
                      text: 'and'.tr(),
                      style: AppTextStyle.captionMedium.copyWith(
                          color: AppColorSchemeHelper.getColorScheme(context)
                              .tertiary),
                    ),
                    TextSpan(
                      text: 'privacy_policy'.tr(),
                      style: AppTextStyle.captionMedium.copyWith(
                          color: AppColorSchemeHelper.getColorScheme(context)
                              .primary),
                    ),
                  ],
                ),
              ),
            ),
            AppOffsetBox.heightRegularBox,
            AppFilledTextButton(
              title: 'continue',
              onTap: () {},
            ),
            AppOffsetBox.heightRegularBox,
          ],
        ),
      ),
    );
  }
}
