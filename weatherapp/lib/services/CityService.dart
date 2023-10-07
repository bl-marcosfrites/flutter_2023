import 'package:weatherapp/models/CityData.dart';
import 'package:weatherapp/services/HttpHandler.dart';

Future<CityData> getListOfCities(String city) async {
  String url = 'https://geocoding-api.open-meteo.com/v1/search?name=$city';
  final response = await handleHTTP(url);
  final cityData = CityData.fromJson(response.data);
  return cityData;
}