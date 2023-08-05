import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../register_form/register_form.dart';
import 'registration.dart';
import 'widgets/widgets.dart';

class RegistrationWD extends StatelessWidget {
  const RegistrationWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoScrollbar(
      thickness: 4,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 33),
              MultiStepsWD(),
              SizedBox(height: 34),
              _CurrentRegistrationPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CurrentRegistrationPage extends ConsumerWidget {
  const _CurrentRegistrationPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RegistrationPage currentPage = ref.watch(registerFormInputProvider.select((value) => value.currentPage));

    if (currentPage == RegistrationPage.info) {
      return const InfoFormWD();
    }
    if (currentPage == RegistrationPage.faceImage) {
      return const FaceImageFormWD();
    }
    return const CompletedFormWD();
  }
}
