import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'dashboard_retrofit_datasource.g.dart';

@RestApi()
abstract class DashboardRetrofit {
  @factoryMethod
  factory DashboardRetrofit(Dio dio) => _DashboardRetrofit(dio);

  @GET(DashbaordBaseURLAPI.getBasicInfo)
  Future<BasicInfoModel> getBasicInfo();
}

class DashboardRetrofitDataSource implements IDashboardDataSource {
  DashboardRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<IBasicInfoEntity> getBasicInfo() {
    final retrofit = DashboardRetrofit(dio);
    final response = retrofit.getBasicInfo();
    return response;
  }
}
