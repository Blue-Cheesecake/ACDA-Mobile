import '../../../../../utils/utils.dart';

abstract interface class IFacultyListRepository {
  Future<List<ICommonCategoryValueEntity>> getFaculties();
}
