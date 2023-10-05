import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/models/WeatherData.dart';

final weatherDataNotifier =
ChangeNotifierProvider<WeatherDataProvider>((ref) => WeatherDataProvider());

class WeatherDataProvider extends ChangeNotifier {
  WeatherData weatherData = WeatherData(
    currentWeatherData: CurrentWeatherData(
      temperature: 0,
      windSpeed: 0,
      windDirection: 0,
      weatherCode: 0,
    ),
    hourly: Hourly(
      time: ['0'],
      temperature2M: [0],
    ),
  );
  
  setWeatherData(WeatherData data) {
    weatherData = data;
    notifyListeners();
  }
}
