import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _getLocationAndGoToMapScreen() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nigger")),
      body: Center(
        child: TextButton(
          onPressed: _getLocationAndGoToMapScreen,
          child: Text("Click to get Location"),
        ),
      ),
    );
  }
}
