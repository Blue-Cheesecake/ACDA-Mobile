import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class NormalStateWD extends ConsumerWidget {
  const NormalStateWD({Key? key, required this.data}) : super(key: key);

  final List<ICommonRecordEntity> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 16, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SearchRecordWD(),
              const SizedBox(height: 16),
              FilterSectionWD(),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (_, index) {
              final ICommonRecordEntity record = data[index];
              final String? searchText = ref.watch(filterInputProvider.select((value) => value.searchText));

              if (searchText == null || record.label.contains(searchText)) {
                return RecordItemWD(record: data[index]);
              }
              return const SizedBox.shrink();
            },
            separatorBuilder: (_, index) {
              final ICommonRecordEntity record = data[index];
              final String? searchText = ref.watch(filterInputProvider.select((value) => value.searchText));

              if (searchText == null || record.label.contains(searchText)) {
                return const SizedBox(height: 24);
              }

              return const SizedBox.shrink();
            },
          ),
        )
      ],
    );
  }
}
