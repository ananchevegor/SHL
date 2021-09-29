import 'package:geolocator/geolocator.dart';

class GeolocatorServise {
  final Geolocator geo = Geolocator();

  Stream<Position> getCurrentLocation() {
    var locationOption = LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);
    return geo.getPositionStream(locationOption);
  }

  Future<Position> getInitLocation() async{
      return geo.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
}