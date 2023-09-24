import 'package:dio/dio.dart';
import 'package:nomoz_vaqtlari/constants/config.dart';

import '../model/nomoz_model.dart';

class MyController {

  NomozModel? nomozModelDush;
  NomozModel? nomozModelSesh;
  NomozModel? nomozModelChor;
  NomozModel? nomozModelPay;
  NomozModel? nomozModelJum;
  NomozModel? nomozModelShan;
  NomozModel? nomozModelYak;

  Future<void> getNomozData() async {
    Dio dio = Dio();
    Response response = await dio
        .get("${AppConfig.nomozBaseUrl}/api/present/week?region=Toshkent");

    nomozModelDush = NomozModel.fromJson(response.data[0]);
    nomozModelSesh = NomozModel.fromJson(response.data[1]);
    nomozModelChor = NomozModel.fromJson(response.data[2]);
    nomozModelPay = NomozModel.fromJson(response.data[3]);
    nomozModelJum = NomozModel.fromJson(response.data[4]);
    nomozModelShan = NomozModel.fromJson(response.data[5]);
    nomozModelYak = NomozModel.fromJson(response.data[6]);
  }
}
