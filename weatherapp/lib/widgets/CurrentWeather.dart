import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/models/WeatherData.dart';
import 'package:weatherapp/providers/WeatherDataProvider.dart';
import 'package:weatherapp/services/WeatherService.dart';

class CurrentWeather extends ConsumerStatefulWidget {
  const CurrentWeather({
    super.key,
  });

  @override
  ConsumerState<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends ConsumerState<CurrentWeather> {
  var firstBuild = true;
  @override
  void initState() {
    fetchWeatherData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WeatherData weatherData = ref.read(weatherDataNotifier).weatherData;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Current Weather in Córdoba, Argentina',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(
          height: 150,
          child: Column(
            children: [
              Text(
                'Temperature: ${weatherData.currentWeatherData.temperature}°C',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Wind Speed: ${weatherData.currentWeatherData.windSpeed} km/h',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Wind Direction: ${weatherData.currentWeatherData.windDirection}°',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Weather Code: ${weatherData.currentWeatherData.weatherCode}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void fetchWeatherData() async {
    if (firstBuild) {
      getWeatherData().then((value) => {
        ref.read(weatherDataNotifier).setWeatherData(value),
      });
    }
    firstBuild = false;
  }
}
