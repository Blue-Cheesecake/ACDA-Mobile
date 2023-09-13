import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../../../../../config/config.dart';
import '../../../../../../logic/logic.dart';
import '../../../../utils/utils.dart';

class SelectDateRangeWD extends ConsumerStatefulWidget {
  const SelectDateRangeWD({Key? key}) : super(key: key);

  @override
  ConsumerState<SelectDateRangeWD> createState() => _SelectDateRangeWDState();
}

class _SelectDateRangeWDState extends ConsumerState<SelectDateRangeWD> {
  final DateRangePickerController _dateRangePickerCtr = DateRangePickerController();

  @override
  void initState() {
    super.initState();

    _dateRangePickerCtr.selectedRange = PickerDateRange(
      ref.read(historyInputStateProvider.select((value) => value.getRequestParams.fromDate)),
      ref.read(historyInputStateProvider.select((value) => value.getRequestParams.toDate)),
    );
  }

  @override
  void dispose() {
    _dateRangePickerCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SfDateRangePicker(
          controller: _dateRangePickerCtr,
          onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
            if (dateRangePickerSelectionChangedArgs.value.runtimeType == PickerDateRange) {
              final PickerDateRange range = dateRangePickerSelectionChangedArgs.value;

              ref.read(historyInputStateProvider.notifier).updateFromDateTemp(range.startDate);
              ref.read(historyInputStateProvider.notifier).updateToDateTemp(range.endDate);
            }
          },
          startRangeSelectionColor: DesignSystem.acdaPrimary,
          endRangeSelectionColor: DesignSystem.acdaPrimary,
          rangeSelectionColor: DesignSystem.acdaPrimary.withOpacity(0.15),
          showNavigationArrow: true,
          enablePastDates: true,
          minDate: DateTime(2000),
          maxDate: DateTime(2030),
          selectionMode: DateRangePickerSelectionMode.range,
        ),
        TextButton(
          onPressed: () {
            _dateRangePickerCtr.selectedRange = null;
            ref.read(historyInputStateProvider.notifier).useClearDate();
          },
          child: const Text(ActionBarMessages.clearDate),
        )
      ],
    );
  }
}
