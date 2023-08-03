import 'package:acda_mobile/src/features/register/email_existence/domain/entities/iemail_existence_entity.abs.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../utils/utils.dart';
import '../data.dart';

part 'email_existence_retrofit_datasource.g.dart';

@RestApi()
abstract class EmailExistenceRetrofit {
  @factoryMethod
  factory EmailExistenceRetrofit(Dio dio) => _EmailExistenceRetrofit(dio);

  @GET(EmailExistenceBaseURLAPI.isEmailExist)
  Future<EmailExistenceModel> isEmailExist({@Query('email') required String email});
}

class EmailExistenceDataSource implements IEmailExistenceDataSource {
  EmailExistenceDataSource({required this.dio});

  final Dio dio;

  @override
  Future<IEmailExistenceEntity> isEmailExist({required String email}) {
    final retrofit = EmailExistenceRetrofit(dio);
    final response = retrofit.isEmailExist(email: email);
    return response;
  }
}
