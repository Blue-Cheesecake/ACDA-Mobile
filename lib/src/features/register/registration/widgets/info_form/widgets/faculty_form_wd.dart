import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(InfoFormMessages.facultyTitle),
        const SizedBox(width: 5),
        ref.watch(facultyListProvider.call(providerKey)).when(
              initial: () => Expanded(
                child: ACDAOptionsFormFieldWD(
                  selectedValue: ref.watch(registerFormInputProvider.select((value) => value.faculty?.value)),
                  title: InfoFormMessages.facultyTitle,
                  list: const [],
                  onSelectedValue: (item) => ref.read(registerFormInputProvider.notifier).updateFaculty(item),
                ),
              ),
              error: () => Expanded(
                child: ACDAOptionsFormFieldWD(
                  selectedValue: ref.watch(registerFormInputProvider.select((value) => value.faculty?.value)),
                  title: InfoFormMessages.facultyTitle,
                  list: const [],
                  onSelectedValue: (item) => ref.read(registerFormInputProvider.notifier).updateFaculty(item),
                ),
              ),
              data: (data) {
                return Expanded(
                  child: ACDAOptionsFormFieldWD(
                    selectedValue: ref.watch(registerFormInputProvider.select((value) => value.faculty?.value)),
                    title: InfoFormMessages.facultyTitle,
                    list: data,
                    onSelectedValue: (item) => ref.read(registerFormInputProvider.notifier).updateFaculty(item),
                  ),
                );
              },
            ),
      ],
    );
  }
}
