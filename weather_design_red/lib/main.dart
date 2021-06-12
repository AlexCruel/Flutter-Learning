import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        Padding(padding: EdgeInsets.all(15.0)),
        _temperatureDetail(),
        _extraWeatherDetail(),
        Padding(
          padding: EdgeInsets.only(top: 60.0, bottom: 10.0),
          child: Text(
            '7-DAY WEATHER FORECAST',
            style: TextStyle(color: Colors.white),
          ),
        ),
        _bottomDetail(),
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
      Divider(
        color: Colors.white,
      ),
      Text(
        'Sunday, Jun 06, 2021',
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 60.0,
          ),
        ],
      ),
      SizedBox(
        width: 25.0,
      ),
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '75,2 °F',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'LIGHT SUN',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              )
            ],
          ),
        ],
      ),
    ],
  );
}

Widget _extraWeatherDetail() {
  return Padding(
      padding: EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '5',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(
                'km/hr',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
          SizedBox(
            width: 60.0,
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(
                '%',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
          SizedBox(
            width: 60.0,
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '20',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(
                '%',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
        ],
      ));
}

Widget _bottomDetail() {
  return Row(
    children: <Widget>[
      Expanded(
          child: SizedBox(
        height: 90.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Friday',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '6 °F',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 33.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 50.0),
            Column(
              children: <Widget>[
                Text(
                  'Saturday',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '5 °F',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 33.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 50.0),
            Column(
              children: <Widget>[
                Text(
                  'Sunday',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '4 °F',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 33.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 50.0),
            Column(
              children: <Widget>[
                Text(
                  'Monday',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '4 °F',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 33.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ))
    ],
  );
}
