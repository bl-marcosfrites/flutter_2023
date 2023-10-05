import 'dart:convert';

WeatherData weatherDataFromJson(String str) => WeatherData.fromJson(json.decode(str));

String weatherDataToJson(WeatherData data) => json.encode(data.toJson());

class WeatherData {
  CurrentWeatherData currentWeatherData;
  Hourly hourly;

  WeatherData({
    required this.currentWeatherData,
    required this.hourly,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
    currentWeatherData: CurrentWeatherData.fromJson(json["current_weather"]),
    hourly: Hourly.fromJson(json["hourly"]),
  );

  Map<String, dynamic> toJson() => {
    "current_weather": currentWeatherData.toJson(),
    "hourly": hourly.toJson(),
  };
}

class CurrentWeatherData {
  double temperature;
  double windSpeed;
  int windDirection;
  int weatherCode;

  CurrentWeatherData({
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    required this.weatherCode,
  });

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) => CurrentWeatherData(
    temperature: json["temperature"]?.toDouble(),
    windSpeed: json["windspeed"]?.toDouble(),
    windDirection: json["winddirection"],
    weatherCode: json["weathercode"],
  );

  Map<String, dynamic> toJson() => {
    "temperature": temperature,
    "windspeed": windSpeed,
    "winddirection": windDirection,
    "weathercode": weatherCode,
  };
}

class Hourly {
  List<String> time;
  List<double> temperature2M;

  Hourly({
    required this.time,
    required this.temperature2M,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
    time: List<String>.from(json["time"].map((x) => x)),
    temperature2M: List<double>.from(json["temperature_2m"].map((x) => x?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "time": List<dynamic>.from(time.map((x) => x)),
    "temperature_2m": List<dynamic>.from(temperature2M.map((x) => x)),
  };
}
