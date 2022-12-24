import 'package:flutter/material.dart';

class AppListView extends StatelessWidget {
  const AppListView({
    this.key,
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.shrinkWrap = false,
    this.children = const <Widget>[],
  }) : super(key: key);

  final Key? key;
  final ScrollController? controller;
  final Axis scrollDirection;
  final bool reverse;
  final bool shrinkWrap;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: key,
      padding: EdgeInsets.zero,
      controller: controller,
      scrollDirection: scrollDirection,
      reverse: reverse,
      shrinkWrap: shrinkWrap,
      children: children,
    );
  }
}
