import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../utils/utils.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'evaluation_retrofit_datasource.g.dart';

@RestApi()
abstract class EvaluationRetrofit {
  @factoryMethod
  factory EvaluationRetrofit(Dio dio) => _EvaluationRetrofit(dio);

  @POST(EvaluationBaseURLAPI.evaluate)
  Future<CommonEvaluationResultModel> evaluate({@Body() required EvaluationRequestModel request});
}

class EvaluationRetrofitDataSource implements IEvaluationDataSource {
  EvaluationRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<ICommonEvaluationResultEntity> evaluate({required EvaluationRequestModel request}) {
    final retrofit = EvaluationRetrofit(dio);
    final response = retrofit.evaluate(request: request);
    return response;
  }
}
