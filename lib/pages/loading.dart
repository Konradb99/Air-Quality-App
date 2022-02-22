import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:air_pollution/services/station.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String pmSensorID = 'loading sensor';

  Future<void> setupSensors() async {
    Station instance = Station(stationName: 'Krosno, ul. Kletówki', cityName: 'Krosno', url: '646');
    await instance.getSensor();
    setState((){
      pmSensorID = instance.pm25sensorID;
    });
    Navigator.pushNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    setupSensors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(75.0),
        child: Text(pmSensorID),
      )
    );
  }
}