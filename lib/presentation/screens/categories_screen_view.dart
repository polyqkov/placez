import 'package:flutter/material.dart';
import 'package:placez/presentation/widgets/base/app_scaffold.dart';

class CategoriesScreenView extends StatefulWidget {
  CategoriesScreenView({Key? key}) : super(key: key);

  @override
  State<CategoriesScreenView> createState() => _CategoriesScreenViewState();
}

class _CategoriesScreenViewState extends State<CategoriesScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(child: Text('categories')),
    );
  }
}
