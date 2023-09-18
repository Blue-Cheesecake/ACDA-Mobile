import '../../../../features/evaluation/evaluation_form/utils/utils.dart';
import '../src.dart';

class SelectEvaluationFormFieldEvent extends BaseEvent {
  SelectEvaluationFormFieldEvent({
    required this.level,
    required this.formField,
  }) : super(name: EventName.selectEvaluationFormFieldEvent);

  final int level;
  final EvaluationFormField formField;
}
