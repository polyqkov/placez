import 'package:flutter/material.dart';
import 'package:placez/presentation/app_navigation/routes/app_routes.dart';
import 'package:vrouter/vrouter.dart';

import '../common/app_media_query_padding_helper.dart';
import '../common/app_offset_box.dart';
import '../common/app_padding_grade.dart';
import '../widgets/base/app_scaffold.dart';
import '../widgets/buttons/app_filled_text_button.dart';

class StartScreenView extends StatefulWidget {
  StartScreenView({Key? key}) : super(key: key);

  @override
  State<StartScreenView> createState() => _StartScreenViewState();
}

class _StartScreenViewState extends State<StartScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      paddingBottom: AppMediaQueryPaddingHelper.getPadding(context).bottom,
      paddingLeft: AppPaddingGrade.regularPadding,
      paddingRight: AppPaddingGrade.regularPadding,
      child: Column(
        children: [
          Spacer(),
          AppFilledTextButton(
            title: 'set_up',
            onTap: () {
              context.vRouter.to(AppRoutes.logInScreenRoute.path ?? '');
            },
          ),
          AppOffsetBox.heightRegularBox,
        ],
      ),
    );
  }
}
