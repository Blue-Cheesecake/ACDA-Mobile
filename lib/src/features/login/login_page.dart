import 'package:flutter/material.dart';

import '../../core/core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              ACDANavigation.instance.push(RoutePath.register);
            },
            child: const Text('Sign Up')),
      ),
    );
  }
}
