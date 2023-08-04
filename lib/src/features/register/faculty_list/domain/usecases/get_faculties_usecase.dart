import '../../../../../utils/utils.dart';
import '../domain.dart';

class GetFacultiesUseCase extends BaseUseCase<void, List<ICommonCategoryValueEntity>> {
  GetFacultiesUseCase({required this.repository});

  final IFacultyListRepository repository;

  @override
  Future<List<ICommonCategoryValueEntity>> call(void params) {
    final response = repository.getFaculties();
    return response;
  }
}
