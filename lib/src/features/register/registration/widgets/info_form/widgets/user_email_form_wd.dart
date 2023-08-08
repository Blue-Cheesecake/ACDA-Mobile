import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/config.dart';
import '../../../../../../utils/utils.dart';
import '../../../../register_form/register_form.dart';
import '../utils/utils.dart';

class UserEmailFormWD extends ConsumerStatefulWidget {
  const UserEmailFormWD({Key? key}) : super(key: key);

  @override
  ConsumerState<UserEmailFormWD> createState() => _UserEmailFormWDState();
}

class _UserEmailFormWDState extends ConsumerState<UserEmailFormWD> {
  final _emailController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailController.text = ref.read(registerFormInputProvider.select((value) => value.emailName ?? ''));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          InfoFormMessages.userEmailTitle,
          style: TextStyles.bodyText2Bold.copyWith(color: DesignSystem.g6),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ACDATextField(
                controller: _emailController,
                focusNode: _focusNode,
                onTapOutside: (_) => FocusScope.of(context).requestFocus(FocusNode()),
                hintText: InfoFormMessages.emailFormPlaceholder,
                onChanged: (value) => ref.read(registerFormInputProvider.notifier).updateEmailName(value),
                onSubmitted: (value) => ref.read(registerFormInputProvider.notifier).updateEmailName(value),
              ),
            ),
            const SizedBox(width: 13),
            Expanded(
              child: ACDAOptionsFormFieldWD(
                selectedValue: ref.watch(registerFormInputProvider.select((value) => value.emailDomain)),
                title: InfoFormMessages.emailDomainNameTitle,
                list: [
                  CommonCategoryValueModel(id: -1, value: AllowedDomainName.studentACTH.value),
                  CommonCategoryValueModel(id: -1, value: AllowedDomainName.studentEDU.value),
                  CommonCategoryValueModel(id: -1, value: AllowedDomainName.staffACTH.value),
                  CommonCategoryValueModel(id: -1, value: AllowedDomainName.staffEDU.value),
                ],
                onSelectedValue: (item) =>
                    ref.read(registerFormInputProvider.notifier).updateEmailDomainName(item.value),
              ),
            ),
          ],
        )
      ],
    );
  }
}
