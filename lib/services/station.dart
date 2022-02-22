import 'package:http/http.dart';
import 'dart:convert';

class Station {

  //Station parameters
  String stationName; //Air sensor name
  String cityName; //City name
  String url; // Sensor ID

  //Sensors
  String pm25sensorID = "";


  Station({required this.stationName, required this.cityName, required this.url});

  Future<void> getSensor() async{
    // make the request
    Response response = await get(Uri.parse('https://api.gios.gov.pl/pjp-api/rest/station/sensors/$url'));
    List data = json.decode(response.body) as List;
    // print(data);

    // get properties from data
    for(int i = 0; i < data.length; i++){
      if(data[i]['param']['paramName'] == "pył zawieszony PM2.5"){
        print(data[i]);
        pm25sensorID = data[i]['id'].toString();
      }
    }
  }
}