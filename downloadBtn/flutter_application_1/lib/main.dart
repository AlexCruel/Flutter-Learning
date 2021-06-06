import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  bool _loading = false;
  double _progressValue = 0.0;

  // @override
  // void initState() {
  //   _loading = false;
  //   _progressValue = 0.0;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(value: _progressValue,),
                      Text(
                        "${(_progressValue * 100).round()}%",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                : Text(
                    "Press button to download",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (timer) {
      setState(() {
        _progressValue += 0.2;

        if (_progressValue.toStringAsFixed(1) == "1.0") {
          _loading = false;
          timer.cancel();
          _progressValue = 0.0;
          return;
        }
      });
     });
  }
}