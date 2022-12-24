import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

import '../app_navigation/routes/app_routes.dart';
import '../common/app_color_scheme_helper.dart';
import '../common/app_media_query_padding_helper.dart';
import '../common/app_offset_box.dart';
import '../common/app_padding_grade.dart';
import '../common/app_text_styles.dart';
import '../widgets/base/app_list_view.dart';
import '../widgets/base/app_scaffold.dart';
import '../widgets/base/app_text.dart';
import '../widgets/buttons/app_filled_text_button.dart';
import '../widgets/chips/app_category_chips.dart';

class WelcomeScreenView extends StatefulWidget {
  WelcomeScreenView({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenView> createState() => _WelcomeScreenViewState();
}

class _WelcomeScreenViewState extends State<WelcomeScreenView> {
  final List<Map<String, String>> _filters = <Map<String, String>>[
    {'🇲🇽': 'Мексиканская еда'},
    {'🍷': 'Бары'},
    {'☕': 'Кофе'},
    {'🇮🇱': 'Израильская кухня'},
    {'🪙': 'Дешевые рестораны'},
    {'🍺': 'Пабы'},
    {'🥞': 'Завтраки'},
    {'💵': 'Дорогие рестораны'},
  ];
  final List<Map<String, String>> _filtersSelected = <Map<String, String>>[];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      paddingBottom: AppMediaQueryPaddingHelper.getPadding(context).bottom,
      paddingLeft: AppPaddingGrade.regularPadding,
      paddingRight: AppPaddingGrade.regularPadding,
      child: Column(
        children: [
          AppOffsetBox.heightRegularBox,
          AppText(
            'welcome!',
            alignment: Alignment.topLeft,
            style: AppTextStyle.largeTitleSemibold.copyWith(
                color: AppColorSchemeHelper.getColorScheme(context).primary),
          ),
          AppOffsetBox.heightSmallBox,
          AppText(
            'what_youre_interested',
            alignment: Alignment.topLeft,
            style: AppTextStyle.bodyRegular.copyWith(
                color: AppColorSchemeHelper.getColorScheme(context).primary),
          ),
          Expanded(
            child: AppListView(
              children: [
                AppOffsetBox.heightRegularBox,
                Wrap(
                  spacing: 9.0,
                  runSpacing: 9.0,
                  children: _filters
                      .map(
                        (filter) => AppCategoryChip(
                          title: filter.values.first,
                          emojiDescription: filter.keys.first,
                          selected: _filtersSelected.contains(filter),
                          onSelected: (value) {
                            setState(() {
                              if (value) {
                                if (!_filtersSelected
                                    .contains(filter.values.first)) {
                                  _filtersSelected.add(filter);
                                }
                              } else {
                                _filtersSelected.removeWhere(
                                    (Map<String, String> entry) =>
                                        entry == filter);
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
                AppOffsetBox.heightRegularBox,
              ],
            ),
          ),
          _filtersSelected.length < 5
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
                  child: Center(
                    child: AppText(
                      'choosed_categories_count',
                      style: AppTextStyle.subheadMedium.copyWith(
                        color: AppColorSchemeHelper.getColorScheme(context)
                            .primary,
                      ),
                      args: [_filtersSelected.length.toString()],
                    ),
                  ),
                )
              : AppFilledTextButton(
                  title: 'finish',
                  onTap: () {
                    context.vRouter.to('/home_screen');
                  },
                ),
          AppOffsetBox.heightRegularBox,
        ],
      ),
    );
  }
}
