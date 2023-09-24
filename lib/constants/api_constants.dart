class ApiConstants {
  ApiConstants._();

  static String nomozPath(String city) => "/api/present/week?region=$city";

  static Map<String, String> nomozParams(String region) => {
        'region': region,
      };

  static const geoPath = '/ipgeo';

  static Map<String, String> geoParams(String apiKey) => {
        'apiKey': apiKey,
      };
}
