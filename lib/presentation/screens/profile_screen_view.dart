import 'package:flutter/material.dart';
import 'package:placez/presentation/widgets/base/app_scaffold.dart';

class ProfileScreenView extends StatefulWidget {
  ProfileScreenView({Key? key}) : super(key: key);

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(child: Text('profile')),
    );
  }
}
