import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';
import '../utils/utils.dart';

class BottomSectionWD extends ConsumerWidget {
  const BottomSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormInputSectionWD(
      title: FormMessages.bottomSectionTitle,
      category: ValidationCategory.bottom,
      updateStateFN: ref.read(formInputProvider.notifier).updateBottomImage,
      currentImageBytes: ref.watch(formInputProvider.select((value) => value.bottomImageBytes)),
    );
  }
}
