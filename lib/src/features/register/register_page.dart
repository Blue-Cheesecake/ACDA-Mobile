import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'registration/registration.dart';
import 'utils/utils.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Padding(
              padding: const EdgeInsets.only(left: 36, bottom: 14),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  RegisterMessages.signUp,
                  style: TextStyles.header4.copyWith(color: DesignSystem.g1),
                ),
              ),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(31)),
          ),
        ),
      ),
      body: const RegistrationWD(),
    );
  }
}
