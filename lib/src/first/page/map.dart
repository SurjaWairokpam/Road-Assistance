import 'package:flutter/material.dart';

class MapUi extends StatefulWidget {
  const MapUi({super.key});

  @override
  State<MapUi> createState() => _MapUiState();
}

class _MapUiState extends State<MapUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Know your location"),),
    );
  }
}