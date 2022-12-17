import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
    required this.child,
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
            top: widget.paddingTop ?? 0.0,
            bottom: widget.paddingBottom ?? 0.0,
            left: widget.paddingLeft ?? 0.0,
            right: widget.paddingRight ?? 0.0,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
