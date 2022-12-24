import 'package:flutter/material.dart';

import '../widgets/base/app_scaffold.dart';

class HomeScreenView extends StatefulWidget {
  HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(child: Text('home')),
    );
  }
}
