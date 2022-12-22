import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:placez/internal/app_navigation/routes/app_routes.dart';
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
      paddingBottom: AppMediaQueryPaddingHelper.getPadding(context).bottom,
      paddingLeft: AppPaddingGrade.regularPadding,
      paddingRight: AppPaddingGrade.regularPadding,
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
          RichText(
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
                      color:
                          AppColorSchemeHelper.getColorScheme(context).primary),
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
                      color:
                          AppColorSchemeHelper.getColorScheme(context).primary),
                ),
              ],
            ),
          ),
          AppOffsetBox.heightRegularBox,
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
                    context.vRouter.to(AppRoutes.otpScreenRoute.path ?? '');
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
