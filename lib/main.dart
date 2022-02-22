import 'package:flutter/material.dart';
import 'package:air_pollution/pages/loading.dart';
import 'package:air_pollution/pages/sensors.dart';
import 'package:air_pollution/pages/home.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
      }
    )
);