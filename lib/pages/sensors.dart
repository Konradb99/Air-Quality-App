import 'package:flutter/material.dart';
import 'package:air_pollution/services/station.dart';


class Sensors extends StatefulWidget{
  @override
  _SensorsState createState() => _SensorsState();
}

class _SensorsState extends State<Sensors> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Air Quality Checker',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            centerTitle: true
        ),
      );
  }
}