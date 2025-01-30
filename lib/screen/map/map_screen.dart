
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  Set<Marker> _markers = {};

  void _onMapTapped(LatLng position) {
    setState(() {
      // Add a marker where the user tapped
      _markers.clear();
      _markers.add(
        Marker(
          markerId: MarkerId(position.toString()),
          position: position,
          infoWindow: InfoWindow(title: 'Picked Location'),
        ),
      );
    });

    // You can use the position's latitude and longitude here
    print("Latitude: ${position.latitude}, Longitude: ${position.longitude}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Location"),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(27.723553328707258, 85.45560736209154), // Initial position, for example San Francisco
          zoom: 10,
        ),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        onTap: _onMapTapped,  // When user taps on the map
        markers: _markers,    // Display markers on the map
      ),
    );
  }
}