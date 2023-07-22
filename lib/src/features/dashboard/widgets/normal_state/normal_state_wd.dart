import 'package:flutter/cupertino.dart';

import '../../../../utils/utils.dart';
import 'widgets/widgets.dart';

class NormalStateWD extends StatelessWidget {
  const NormalStateWD({Key? key, required this.data}) : super(key: key);

  final List<ICommonRecordEntity> data;

  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (_, index) => RecordItemWD(record: data[index]),
            separatorBuilder: (_, __) => const SizedBox(height: 24),
          ),
        )
      ],
    );
  }
}
