import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';
import '../utils/utils.dart';

class ShoesSectionWD extends ConsumerWidget {
  const ShoesSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormInputSectionWD(
      title: FormMessages.shoesSectionTitle,
      category: ValidationCategory.shoes,
      updateStateFN: ref.read(formInputProvider.notifier).updateShoesImage,
      currentImageBytes: ref.watch(formInputProvider.select((value) => value.shoesImageBytes)),
    );
  }
}
