import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nigger")),
      body: Container(
        height: 200,
        width: double.infinity,
        child: FlutterMap(
          mapController: MapController(),
          options: MapOptions(),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              // + many other options
            ),
          ],
        ),
      ),
    );
  }
}
