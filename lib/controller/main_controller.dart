import '../data/geo_repository.dart';
import '../data/nomoz_repository.dart';
import '../model/geo_model.dart';
import '../model/nomoz_model.dart';
import '../utils/custom_exeption.dart';

class MainController {
  final IGeoRepository geoRepository;
  final INomozRepository nomozRepository;

  MainController({
    required this.geoRepository,
    required this.nomozRepository,
  });

  NomozModel? nomozModel;
  ApiGeoLocation? geoModel;


  Future<void> getWeatherData() async {
    try {
      geoModel = await geoRepository.getGeoData();
      nomozModel =
      await nomozRepository.getNomozData(geoModel?.city ?? "");

    } on UnknownException catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on ClientException catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on ServerException catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    } on Object catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
  }

}


