import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 700,
        child: Column(
          children: [
            Text(
                'Hourly Forecast: 1'
            ),
            Text(
                'Hour: 1'
            ),
            Text(
                'Temperature: 1'
            ),
            Text(
                'Hourly Forecast: 2'
            ),
            Text(
                'Hour: 2'
            ),
            Text(
                'Temperature: 2'
            ),
            Text(
                'Hourly Forecast: 3'
            ),
            Text(
                'Hour: 3'
            ),
            Text(
                'Temperature: 3'
            ),
          ],
        )
    );
  }
}