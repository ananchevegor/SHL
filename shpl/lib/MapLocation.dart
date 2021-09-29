import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shpl/service/geolocator_service.dart';

class MapLocation extends StatefulWidget {
  final Position initialPosition;
  MapLocation(this.initialPosition);


  @override
  _MapLocationState createState() => _MapLocationState();
}

class _MapLocationState extends State<MapLocation> {

  final GeolocatorServise geolocatorServise = GeolocatorServise();
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    geolocatorServise.getCurrentLocation().listen((position) {
      centerScreen(position);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(widget.initialPosition.latitude, widget.initialPosition.longitude),
          zoom: 16,
        ),
      myLocationEnabled: true,
      onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
      },
    );
  }

  Future<void> centerScreen(Position position) async{
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(position.latitude, position.longitude),
      zoom: 18.0
    )));
  }
}


