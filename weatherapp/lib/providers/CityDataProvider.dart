import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/models/CityData.dart';

final cityDataNotifier =
ChangeNotifierProvider<CityDataProvider>((ref) => CityDataProvider());

class CityDataProvider extends ChangeNotifier {
  CityData cityData = CityData(
    results: [
      City(
        id: 0,
        name: '',
        latitude: 0,
        longitude: 0,
      ),
    ],
  );

  setCityData(CityData data) {
    cityData = data;
    notifyListeners();
  }
}