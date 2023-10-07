import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/CurrentWeather.dart';
import '../widgets/HourlyForecast.dart';
import '../widgets/MainTitle.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final cityController = TextEditingController(text: 'Cordoba');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MainTitle(cityController: cityController),
              CurrentWeather(city: cityController.text),
              const HourlyForecast(),
            ],
          ),
        ),
      ),
    );
  }
}
