import 'package:flutter/widgets.dart';

import '../../common/app_color_scheme_helper.dart';
import '../../common/app_media_query_padding_helper.dart';
import 'app_bottom_tab_bar_item.dart';

class AppBottomTabBar extends StatelessWidget {
  const AppBottomTabBar({
    Key? key,
    required this.items,
    this.currentIndex = 0,
    this.onTap,
  }) : super(key: key);

  final List<AppBottomTabBarItem> items;
  final int currentIndex;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColorSchemeHelper.getColorScheme(context).background,
      ),
      child: SizedBox(
        height: 56 + AppMediaQueryPaddingHelper.getPadding(context).bottom,
        child: Padding(
          padding: EdgeInsets.only(
            top: 12,
            bottom: 12 + AppMediaQueryPaddingHelper.getPadding(context).bottom,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items
                .map(
                  (item) => GestureDetector(
                    onTap: onTap == null
                        ? null
                        : () {
                            onTap!(items.indexOf(item));
                          },
                    child: IconTheme.merge(
                      data: IconThemeData(
                        color: currentIndex == items.indexOf(item)
                            ? AppColorSchemeHelper.getColorScheme(context)
                                .primary
                            : AppColorSchemeHelper.getColorScheme(context)
                                .surface,
                      ),
                      child: Padding(
                        padding: items.indexOf(item) != 0
                            ? const EdgeInsets.only(left: 60)
                            : EdgeInsets.zero,
                        child: item,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
