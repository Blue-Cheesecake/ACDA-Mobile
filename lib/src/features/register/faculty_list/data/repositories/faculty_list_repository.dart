import '../../../../../utils/utils.dart';
import '../../faculty_list.dart';

class FacultyListRepository implements IFacultyListRepository {
  FacultyListRepository({required this.dataSource});

  final IFacultyListDataSource dataSource;

  @override
  Future<List<ICommonCategoryValueEntity>> getFaculties() {
    final response = dataSource.getFaculties();
    return response;
  }
}
