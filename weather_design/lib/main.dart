import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: null,
            ),
          ],
          brightness: Brightness.light,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: AssetImage('assets/images/17_14.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Saturday - 29',
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '17° Clear',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Brest region, Pinsk',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    runSpacing: 15.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}°',
          style: TextStyle(fontSize: 15),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        backgroundColor: Colors.grey.shade300,
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(Icons.star, color: Colors.yellow[600], size: 15.0),
      Icon(Icons.star, color: Colors.yellow[600], size: 15.0),
      Icon(Icons.star, color: Colors.yellow[600], size: 15.0),
      Icon(Icons.star, color: Colors.black, size: 15.0),
      Icon(Icons.star, color: Colors.black, size: 15.0),
    ],
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text('Info openweathermap.org', style: TextStyle(fontSize: 15.0)),
      stars,
    ],
  );
}
