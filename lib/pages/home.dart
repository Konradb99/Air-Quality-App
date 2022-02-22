import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:air_pollution/services/station.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Station> stations = [
    Station(stationName: 'Krosno, ul. Kletówki', cityName: 'Krosno', url: '646'),
    Station(stationName: 'Konin, ul. Wyszyńskiego', cityName: 'Konin', url: '902'),
    Station(stationName: 'Kalisz, ul. Wyszyńskiego', cityName: 'Kalisz', url: '952'),
    Station(stationName: 'Białystok, ul. Waszyngtona', cityName: 'Białystok', url: '605'),
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Select station'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: stations.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(stations[index].stationName),
            ),
          );
        },
      )
    );
  }
}