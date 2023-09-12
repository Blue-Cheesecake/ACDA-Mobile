import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain.dart';
import '../../logic/logic.dart';
import 'record_card.dart';

class RecordListWD extends ConsumerWidget {
  const RecordListWD({required this.records, Key? key}) : super(key: key);

  final List<IEvaluationRecordEntity> records;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.read(getRecordsStateProvider.notifier).fetchRecords();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 28, left: 9, right: 9),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: records.length,
          itemBuilder: (context, index) {
            return RecordCartWD(data: records[index], isSelected: false);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 12);
          },
        ),
      ),
    );
  }
}
