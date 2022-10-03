import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class MapWidget extends StatefulWidget {
  final bool fullScreen;

  const MapWidget({required this.fullScreen});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final MapController mapController = MapController();

  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  LocationData? _userLocation;

  double userLatitude = 0;
  double userLongitude = 0;


  Future<void> _getUserLocation() async {
    Location location = Location();

    // Check if location service is enable
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final locationData = await location.getLocation();
    setState(() {
      _userLocation = locationData;
      if (_userLocation != null) {
        userLatitude = _userLocation!.latitude!;
        userLongitude = _userLocation!.longitude!;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(25.686613, -100.31000),
              zoom: 10.0,
              maxZoom: 18.0,
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
                subdomains: const ["a", "b", "c"],
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(userLatitude, userLongitude),
                    builder: (context) => const Icon(
                      Icons.pin_drop,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Visibility(
            visible: widget.fullScreen,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 10.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Back",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
