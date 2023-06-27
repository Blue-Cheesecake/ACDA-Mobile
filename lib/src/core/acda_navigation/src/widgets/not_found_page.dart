import 'package:flutter/material.dart';

import '../utils/utils.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(NavigationMessages.notFound),
      ),
    );
  }
}
