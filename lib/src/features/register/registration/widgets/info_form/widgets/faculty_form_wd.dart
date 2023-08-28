import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../../../../faculty_list/logic/logic.dart';
import '../../../../register_form/register_form.dart';
import '../utils/utils.dart';

const providerKey = 'FACULTY_FORM_WD';

class FacultyFormWD extends ConsumerStatefulWidget {
  const FacultyFormWD({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FacultyFormWDState();
}

class _FacultyFormWDState extends ConsumerState<FacultyFormWD> {
  @override
  void initState() {
    super.initState();

    ref.read(facultyListProvider.call(providerKey).notifier).getFaculties();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          InfoFormMessages.facultyTitle,
          style: TextStyles.bodyText2Bold.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 5),
        ref.watch(facultyListProvider.call(providerKey)).when(
              initial: () => ACDAOptionsFormFieldWD(
                selectedValue: ref.watch(registerFormInputProvider.select((value) => value.faculty?.value)),
                title: InfoFormMessages.facultyTitle,
                list: const [],
                onSelectedValue: (item) => ref.read(registerFormInputProvider.notifier).updateFaculty(item),
              ),
              error: () => ACDAOptionsFormFieldWD(
                selectedValue: ref.watch(registerFormInputProvider.select((value) => value.faculty?.value)),
                title: InfoFormMessages.facultyTitle,
                list: const [],
                onSelectedValue: (item) => ref.read(registerFormInputProvider.notifier).updateFaculty(item),
              ),
              data: (data) {
                return ACDAOptionsFormFieldWD(
                  selectedValue: ref.watch(registerFormInputProvider.select((value) => value.faculty?.value)),
                  title: InfoFormMessages.facultyTitle,
                  list: data,
                  onSelectedValue: (item) => ref.read(registerFormInputProvider.notifier).updateFaculty(item),
                );
              },
            ),
      ],
    );
  }
}
