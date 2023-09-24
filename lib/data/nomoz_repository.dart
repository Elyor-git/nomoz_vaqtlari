import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:nomoz_vaqtlari/service/i_service.dart';

import '../../constants/api_constants.dart';
import '../../constants/config.dart';
import '../model/nomoz_model.dart';

abstract interface class INomozRepository {
  abstract final NomozServiceWrapper wrapper;

  Future<NomozModel> getNomozData(String city);
}

class NomozRepository implements INomozRepository {
  NomozRepository() : wrapper = NomozServiceWrapper(dio: _dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: AppConfig.nomozBaseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    responseType: ResponseType.json,
  ));

  @override
  final NomozServiceWrapper wrapper;

  @override
  Future<NomozModel> getNomozData(String city) async {
    String response = await wrapper.request(
      ApiConstants.nomozPath(city),
    );
    List<Map<String, Object?>> json = jsonDecode(response);
    
    return NomozModel.fromJson(json.map((e) => NomozModel.fromJson(e)) as Map<String, Object?>);
  }
}
