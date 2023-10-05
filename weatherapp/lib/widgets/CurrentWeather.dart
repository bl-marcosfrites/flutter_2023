import 'package:flutter/material.dart';
import 'package:weatherapp/models/WeatherData.dart';
import 'package:weatherapp/services/WeatherService.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({
    super.key,
  });

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  WeatherData weatherData = WeatherData(
    currentWeatherData: CurrentWeatherData(
      temperature: 0,
      windSpeed: 0,
      windDirection: 0,
      weatherCode: 0,
    ),
    hourly: Hourly(
      time: [],
      temperature2M: [],
    ),
  );

  @override
  void initState() {
    getWeatherData().then((value) {
      setState(() {
        weatherData = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
}
