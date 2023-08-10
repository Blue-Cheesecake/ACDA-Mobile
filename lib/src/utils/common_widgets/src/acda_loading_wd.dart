import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ACDALoadingWD extends StatelessWidget {
  const ACDALoadingWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ACDAPlatform.instance.isIOS) {
      return const CupertinoActivityIndicator();
    }
    return const CircularProgressIndicator();
  }
}
