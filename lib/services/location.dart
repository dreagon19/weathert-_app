import 'package:geolocator/geolocator.dart';
import 'package:app_settings/app_settings.dart';

class Location {
  double latitude, longitude;


  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }


  Future<void> pressedYes() async {
    await AppSettings.openLocationSettings();
  }


  }
