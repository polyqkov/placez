import 'package:flutter/material.dart';
import 'package:placez/presentation/common/app_icons.dart';
import 'package:placez/presentation/common/app_offset_box.dart';
import 'package:placez/presentation/widgets/buttons/app_icon_button.dart';

import '../widgets/app_scaffold.dart';
import '../widgets/buttons/app_filled_text_button.dart';
import '../widgets/buttons/app_text_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppOffsetBox.widthRegularBox,
                AppIconButton(
                  icon: AppIcons.arrowLeft,
                  onTap: () {},
                ),
                AppOffsetBox.widthRegularBox,
                Expanded(
                  child: AppFilledTextButton(
                    title: 'Continue',
                    onTap: () {},
                  ),
                ),
                AppOffsetBox.widthRegularBox,
              ],
            ),
            AppOffsetBox.heightSmallBox,
            AppTextButton(
              title: 'Continue',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
