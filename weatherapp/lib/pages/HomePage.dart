import 'package:flutter/material.dart';
import '../widgets/CurrentWeather.dart';
import '../widgets/HourlyForecast.dart';
import '../widgets/MainTitle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MainTitle(),
              CurrentWeather(),
              HourlyForecast(),
            ],
          ),
        ),
      ),
    );
  }
}
