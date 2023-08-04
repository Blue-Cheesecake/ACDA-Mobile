import '../../../../../utils/utils.dart';

abstract interface class IFacultyListDataSource {
  Future<List<ICommonCategoryValueEntity>> getFaculties();
}
