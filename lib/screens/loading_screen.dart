import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

double key;
class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();

}

class _LoadingScreenState extends State<LoadingScreen> {

var lati;
var longi;

  @override
void initState()  {

    super.initState();


  }

  void getData() async{
    http.Response r= await http.get('http://api.weatherstack.c'
        'om/current?access_key=41eb36e0c5f82e3ddce66ef01af877a1&query=$lati,$longi');
    String s =r.body;
var data1 =  jsonDecode(s)['location']['lat'];
var data2 = jsonDecode(s)['location']['lon'];
print(data1);
print(data2);
print(lati);
print(longi);
  }



void getlocation() async {
  location a= location();
 await a.getclocation();
lati=a.lat;
longi=a.long;
}

  Widget build(BuildContext context) {
    getlocation();
    getData();
    return Scaffold();

  }
}
