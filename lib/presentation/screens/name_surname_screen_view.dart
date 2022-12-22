import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

import '../../internal/app_navigation/routes/app_routes.dart';
import '../common/app_color_scheme_helper.dart';
import '../common/app_media_query_padding_helper.dart';
import '../common/app_offset_box.dart';
import '../common/app_padding_grade.dart';
import '../common/app_text_styles.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/app_text.dart';
import '../widgets/buttons/app_filled_text_button.dart';
import '../widgets/textfields/app_textfield.dart';

class NameSurnameScreenView extends StatefulWidget {
  NameSurnameScreenView({Key? key}) : super(key: key);

  @override
  State<NameSurnameScreenView> createState() => _NameSurnameScreenViewState();
}

class _NameSurnameScreenViewState extends State<NameSurnameScreenView> {
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
            'whats_your_name',
            alignment: Alignment.topLeft,
            style: AppTextStyle.largeTitleSemibold.copyWith(
                color: AppColorSchemeHelper.getColorScheme(context).primary),
          ),
          AppOffsetBox.heightMediumBox,
          AppTextfield(
            hintText: 'name',
            autofocus: true,
            autofillHints: [AutofillHints.givenName],
          ),
          AppOffsetBox.heightRegularBox,
          AppTextfield(
            hintText: 'surname',
            autofillHints: [AutofillHints.familyName],
          ),
          Spacer(),
          AppFilledTextButton(
            title: 'continue',
            onTap: () {
              context.vRouter.to(AppRoutes.welcomeScreenRoute.path ?? '');
            },
          ),
          AppOffsetBox.heightRegularBox,
        ],
      ),
    );
  }
}
