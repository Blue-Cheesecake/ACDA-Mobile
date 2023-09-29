import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'info_form_retrofit_datasource.g.dart';

@RestApi()
abstract class InfoFormRetrofit {
  @factoryMethod
  factory InfoFormRetrofit(Dio dio) => _InfoFormRetrofit(dio);

  @GET(InfoFormBaseURLAPI.isValidToRegister)
  Future<RegisterValidityResultModel> validateEmailStudentId({
    @Query('email') required String email,
    @Query('studentId') required String studentId,
  });
}

class InfoFormRetrofitDataSource implements IInfoFormDataSource {
  InfoFormRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<IRegisterValidityResultEntity> validateEmailStudentId(RegisterValidityRequestModel request) {
    final retrofit = InfoFormRetrofit(dio);
    final response = retrofit.validateEmailStudentId(email: request.email, studentId: request.studentId);
    return response;
  }
}
