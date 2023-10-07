import 'package:weatherapp/models/WeatherData.dart';
import 'package:weatherapp/services/CityService.dart';
import 'package:weatherapp/services/HttpHandler.dart';

Future<WeatherData> getWeatherData() async {
  String url = 'https://api.open-meteo.com/v1/forecast?latitude=-31.4135&longitude=-64.181&hourly=temperature_2m&current_weather=true&forecast_days=1';
  final response = await handleHTTP(url);
  final weatherData = WeatherData.fromJson(response.data);
  return weatherData;
}

Future<WeatherData> getWeatherDataForCity(String city) async {
  var cities = await getListOfCities(city);
  var latitudeFirstCity = cities.results[0].latitude;
  var longitudeFirstCity = cities.results[0].longitude;

  String url = 'https://api.open-meteo.com/v1/forecast?latitude=${latitudeFirstCity}&longitude=${longitudeFirstCity}&hourly=temperature_2m&current_weather=true&forecast_days=1';
  final response = await handleHTTP(url);
  final weatherData = WeatherData.fromJson(response.data);
  return weatherData;
}
