import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:move_by/features/home_screen.dart/presentation/widgets/functional/map.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _getLocationAndGoToMapScreen() async {
    final location = await _getLocation();
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => MapScreen(currentLocation: location,)));
  }

  Future<Position> _getLocation() async {

    LocationPermission permission;

//    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location Services Denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }
    final locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    return await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nigger")),
      body: Center(
        child: TextButton(
          onPressed: () async => await _getLocationAndGoToMapScreen(),
          child: Text("Click to get Location"),
        ),
      ),
    );
  }
}
