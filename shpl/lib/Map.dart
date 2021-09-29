import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shpl/Drawer.dart';
import 'package:shpl/MapLocation.dart';
import 'package:shpl/service/geolocator_service.dart';
import 'package:provider/provider.dart';

class onMap extends StatelessWidget {
  //aaaaaaaaaasonMap({Key? key}) : super(key: key);
  final geoService = GeolocatorServise();




  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => geoService.getInitLocation(),
      child: Scaffold(
        appBar: AppBar(
            title: Text("Map"),
            backgroundColor: Color.fromRGBO(194, 135, 153, 1)
        ),
        drawer: DrawerNav(),
        body: Consumer<Position>(builder: (context,position,widget){
          return (position != null) ? MapLocation(position) : Center(child: CircularProgressIndicator(),);
        },),
      ),


    );
  }
}