import 'package:flutter/material.dart';
import 'package:placez/presentation/app_navigation/routes/app_routes.dart';
import 'package:vrouter/vrouter.dart';

import '../../common/app_icons.dart';
import 'app_bottom_tab_bar.dart';
import 'app_bottom_tab_bar_item.dart';

class AppScaffoldWithBottomTabBar extends StatefulWidget {
  const AppScaffoldWithBottomTabBar({
    Key? key,
    this.child = const SizedBox(),
    this.color,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;

  @override
  State<AppScaffoldWithBottomTabBar> createState() =>
      _AppScaffoldWithBottomTabBarState();
}

class _AppScaffoldWithBottomTabBarState
    extends State<AppScaffoldWithBottomTabBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        backgroundColor: widget.color,
        body: Padding(
          padding: EdgeInsets.only(
            top: widget.paddingTop ?? 0.0,
            bottom: widget.paddingBottom ?? 0.0,
            left: widget.paddingLeft ?? 0.0,
            right: widget.paddingRight ?? 0.0,
          ),
          child: widget.child,
        ),
        bottomNavigationBar: AppBottomTabBar(
          currentIndex: index,
          onTap: (value) {
            switch (value) {
              case 0:
                context.vRouter
                    .to('/' + (AppRoutes.homeScreenRoute.path ?? ''));
                setState(() => index = value);
                break;
              case 1:
                context.vRouter
                    .to('/' + (AppRoutes.categoriesScreenRoute.path ?? ''));
                setState(() => index = value);
                break;
              case 2:
                context.vRouter
                    .to('/' + (AppRoutes.favoritesScreenRoute.path ?? ''));
                setState(() => index = value);
                break;
              case 3:
                context.vRouter
                    .to('/' + (AppRoutes.profileScreenRoute.path ?? ''));
                setState(() => index = value);
                break;
              default:
                context.vRouter
                    .to('/' + (AppRoutes.homeScreenRoute.path ?? ''));
                setState(() => index = value);
                break;
            }
          },
          items: [
            AppBottomTabBarItem(icon: AppIcons.feed),
            AppBottomTabBarItem(icon: AppIcons.store),
            AppBottomTabBarItem(icon: AppIcons.heartFill),
            AppBottomTabBarItem(icon: AppIcons.user),
          ],
        ),
      ),
    );
  }
}
