import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/utils.dart';
import '../../faculty_list.dart';

part 'faculty_list_retrofit_datasource.g.dart';

@RestApi()
abstract class FacultyListRetrofit {
  @factoryMethod
  factory FacultyListRetrofit(Dio dio) => _FacultyListRetrofit(dio);

  @GET(FacultyListBaseURLAPI.getAll)
  Future<List<CommonCategoryValueModel>> getFaculties();
}

class FacultyListDataSource implements IFacultyListDataSource {
  FacultyListDataSource({required this.dio});

  final Dio dio;

  @override
  Future<List<ICommonCategoryValueEntity>> getFaculties() {
    final retrofit = FacultyListRetrofit(dio);
    final response = retrofit.getFaculties();
    return response;
  }
}
