import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/config.dart';
import '../../../../../utils/utils.dart';
import '../../../utils/utils.dart';
import '../logic/logic.dart';

class SearchRecordWD extends ConsumerStatefulWidget {
  const SearchRecordWD({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchRecordWD> createState() => _SearchRecordWDState();
}

class _SearchRecordWDState extends ConsumerState<SearchRecordWD> {
  final _textCtr = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _textCtr.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onChanged(String? value) {
    ref.read(filterInputProvider.notifier).updateSearchText(value);
  }

  @override
  Widget build(BuildContext context) {
    return ACDATextField(
      controller: _textCtr,
      focusNode: _focusNode,
      labelText: DashboardMessages.searchPlaceholder,
      onChanged: (value) => _onChanged(value),
      onSubmitted: (value) => _onChanged(value),
      onTapOutside: (e) => FocusScope.of(context).requestFocus(FocusNode()),
      prefixIcon: const Icon(Icons.search_outlined),
      outlineInputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(width: 1, color: DesignSystem.g13),
      ),
    );
  }
}
