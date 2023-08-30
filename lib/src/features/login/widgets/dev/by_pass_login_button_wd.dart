import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class ByPassLoginButtonWd extends StatelessWidget {
  const ByPassLoginButtonWd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ACDANavigation.instance.go(RoutePath.central);
      },
      child: const Text('Go to Login'),
    );
  }
}
