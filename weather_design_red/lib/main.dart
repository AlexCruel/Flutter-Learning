import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WeatherForecast());
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: _header(),
      body: _buildBody(),
    );
  }
}

AppBar _header() {
  return AppBar(
    title: Text(
      'Weather Forecast',
    ),
    centerTitle: true,
    backgroundColor: Colors.red,
    elevation: 0,
  );
}

Widget _buildBody() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        _textField(),
        _cityDetail(),
      ],
    ),
  );
}

TextField _textField() {
  return TextField(
    style: TextStyle(color: Colors.white),
    decoration: const InputDecoration(
      prefixIcon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      hintText: 'city...',
      hintStyle: TextStyle(color: Colors.white70),
      labelText: 'Enter City Name',
      labelStyle: TextStyle(color: Colors.white),
      border: InputBorder.none,
    ),
  );
}

Column _cityDetail() {
  return Column(
    children: <Widget>[
      Text(
        'Brest Region , BY',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
      Divider(color: Colors.white,),
      Text(
        'Sunday, Jun 06, 2021',
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
