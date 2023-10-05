import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/models/WeatherData.dart';
import 'package:weatherapp/providers/WeatherDataProvider.dart';

class HourlyForecast extends ConsumerStatefulWidget {
  const HourlyForecast({
    super.key,
  });

  @override
  ConsumerState<HourlyForecast> createState() => _HourlyForecastState();
}

class _HourlyForecastState extends ConsumerState<HourlyForecast> {
  @override
  Widget build(BuildContext context) {
    final weatherData = ref.watch(weatherDataNotifier).weatherData;
    return SizedBox(
        child: Column(
          children: getHourlyWeather(weatherData),
        )
    );
  }

  getHourlyWeather(WeatherData weatherData) {
    List<Widget> hourlyWeather = [];
    hourlyWeather.add(const Text('Hourly Forecast:'));
    hourlyWeather.add(const SizedBox(height: 20));
    for (var i = 0; i < weatherData.hourly.time.length; i++) {
      hourlyWeather.add(Text(
          'Hour: ${weatherData.hourly.time[i]}'
      ));
      hourlyWeather.add(Text(
          'Temperature: ${weatherData.hourly.temperature2M[i]}'
      ));
      hourlyWeather.add(const SizedBox(height: 20));
    }
    return hourlyWeather;
  }
}
