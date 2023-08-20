import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../../../utils/utils.dart';
import '../logic/logic.dart';

class LoginAsDevButtonWD extends ConsumerWidget {
  const LoginAsDevButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () {
          showACDABottomSheet(
              context: context,
              child: ACDAListBottomSheetWD(
                title: 'User',
                onSelectedValue: (item) {
                  if (item.value == 'sinut.wat@student.mahidol.edu') {
                    ACDAUser.instance.clearToken();
                    ref.read(loginFormInputProvider.notifier).updateEmail('sinut.wat@student.mahidol.edu');
                    ref.read(loginFormInputProvider.notifier).updatePassword('1111111');
                    ref.read(authProvider.notifier).authenticate();
                  }
                },
                list: [
                  CommonCategoryValueModel(id: 1, value: 'sinut.wat@student.mahidol.edu'),
                ],
              ));
        },
        child: const Text('Loggin as Dev'));
  }
}
