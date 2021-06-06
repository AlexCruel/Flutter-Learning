import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            "Counter",
          ),
          centerTitle: true,
        ),
        body: CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Tap '-' to decrement",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  tooltip: "Плюс",
                  onPressed: () {
                    setState(() {
                      _count += 1;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "$_count",
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  tooltip: "Минус",
                  onPressed: () {
                    setState(() {
                      _count -= 1;
                    });
                  },
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),
              ],
            ),
            Text(
              "Tap '+' to increment",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
