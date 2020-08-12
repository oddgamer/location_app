import 'package:geolocator/geolocator.dart';
class location{

  double lat;
  double long;


  Future<void> getclocation() async{
// this function is defined in another class
   Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  lat=position.latitude;
  long=position.longitude;


    }



}