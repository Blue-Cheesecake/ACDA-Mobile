import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';
import '../utils/utils.dart';

class BodySectionWD extends ConsumerWidget {
  const BodySectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormInputSectionWD(
      title: FormMessages.bodySectiontitle,
      category: ValidationCategory.body,
      updateStateFN: ref.read(formInputProvider.notifier).updateBodyImage,
      currentImageBytes: ref.watch(formInputProvider.select((value) => value.bodyImageBytes)),
    );
  }
}
