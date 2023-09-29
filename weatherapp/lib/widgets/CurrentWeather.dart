import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Weather',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(
          height: 150,
          child: Column(
            children: [
              Text(
                'Temperature',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Humidity',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Wind Speed',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
