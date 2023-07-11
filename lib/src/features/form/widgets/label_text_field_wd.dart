import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/common_widgets/common_widgets.dart';
import '../logic/logic.dart';
import '../utils/utils.dart';

class LabelTextFieldWD extends ConsumerStatefulWidget {
  const LabelTextFieldWD({Key? key}) : super(key: key);

  @override
  ConsumerState<LabelTextFieldWD> createState() => _LabelTextFieldWDState();
}

class _LabelTextFieldWDState extends ConsumerState<LabelTextFieldWD> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ACDATextField(
      controller: _controller,
      onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
      errorText: ref.watch(formValidationProvider.select((value) => value.labelErrorText)),
      onChanged: (value) => ref.read(formInputProvider.notifier).updateLabel(value?.trim()),
      onSubmitted: (value) => ref.read(formInputProvider.notifier).updateLabel(value?.trim()),
      labelText: FormMessages.labelPlaceHolder,
    );
  }
}
