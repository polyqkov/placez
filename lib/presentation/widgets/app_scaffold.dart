import 'package:flutter/material.dart';

import '../common/app_media_query_padding_helper.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
    required this.child,
    this.color,
    this.paddingLeft,
    this.paddingRight,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final double? paddingLeft;
  final double? paddingRight;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        backgroundColor: widget.color,
        body: Padding(
          padding: EdgeInsets.only(
            top: AppMediaQueryPaddingHelper.getPadding(context).top,
            bottom: AppMediaQueryPaddingHelper.getPadding(context).bottom,
            left: widget.paddingLeft ?? 0.0,
            right: widget.paddingRight ?? 0.0,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
