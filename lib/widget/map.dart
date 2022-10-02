import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final MapController mapController = new MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(25.686613, -100.31000),
          zoom: 10.0,
          maxZoom: 20.0,
          maxBounds: LatLngBounds(
            LatLng(-90, -180.0),
            LatLng(90.0, 180.0),
          ),
          enableScrollWheel: true,
          scrollWheelVelocity: 0.005,
          enableMultiFingerGestureRace: true,
          keepAlive: true,
          // interactiveFlags: InteractiveFlag.pinchMove
        ),
        mapController: mapController,
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
        ],
      ),
    );
  }
}
