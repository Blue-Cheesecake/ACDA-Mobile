import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../../../../register_form/register_form.dart';
import '../utils/utils.dart';

class StudentIdFormWD extends ConsumerStatefulWidget {
  const StudentIdFormWD({Key? key}) : super(key: key);

  @override
  ConsumerState<StudentIdFormWD> createState() => _StudentIdFormWDState();
}

class _StudentIdFormWDState extends ConsumerState<StudentIdFormWD> {
  final _studentIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _studentIdController.text = ref.read(registerFormInputProvider.select((value) => value.studentId ?? ''));
  }

  @override
  void dispose() {
    _studentIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          InfoFormMessages.studentIdTitle,
          style: TextStyles.bodyText2Bold.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 5),
        ACDATextField(
          hintText: InfoFormMessages.studentIdPlaceholder,
          controller: _studentIdController,
          onTapOutside: (e) => FocusScope.of(context).requestFocus(FocusNode()),
          onChanged: (value) => ref.read(registerFormInputProvider.notifier).updateStudentId(value),
          onSubmitted: (value) => ref.read(registerFormInputProvider.notifier).updateStudentId(value),
          errorText: ref.watch(registerFormValidationProvider.select((value) => value.studentIdErrorText)),
          keyboardType: TextInputType.number,
        )
      ],
    );
  }
}
