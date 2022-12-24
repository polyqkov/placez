import 'package:flutter/material.dart';
import 'package:placez/presentation/widgets/base/app_scaffold.dart';

class FavoritesScreenView extends StatefulWidget {
  FavoritesScreenView({Key? key}) : super(key: key);

  @override
  State<FavoritesScreenView> createState() => _FavoritesScreenViewState();
}

class _FavoritesScreenViewState extends State<FavoritesScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(child: Text('favorites')),
    );
  }
}
