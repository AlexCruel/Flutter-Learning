import 'dart:js';

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
          title: Text('List View'),
          centerTitle: true,
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

// static
// ListView _myListView() {
//   return ListView(
//     // itemExtent: 300,
//     // scrollDirection: Axis.horizontal,
//     children: <Widget>[
//       ListTile(
//         title: Text('Sun'),
//         subtitle: Text('Today is clear'),
//         leading: Icon(Icons.wb_sunny),
//         trailing: Icon(Icons.keyboard_arrow_right),
//       ),
//       ListTile(
//         title: Text('Cloudy'),
//         subtitle: Text('Today is cloudy'),
//         leading: Icon(Icons.cloud),
//         trailing: Icon(Icons.keyboard_arrow_right),
//       ),
//       ListTile(
//         title: Text('Snow'),
//         subtitle: Text('Today is snowy'),
//         leading: Icon(Icons.ac_unit),
//         trailing: Icon(Icons.keyboard_arrow_right),
//       ),
//     ],
//   );
// }

// dynamic
ListView _myListView() {
  final List<ListItem> items = List<ListItem>.generate(
      10000,
      (index) => index % 6 == 0
          ? HeadingItem('Heading $index')
          : MessageItem('Sender $index', 'Message body $index'));

  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      final item = items[index];

      if (item is HeadingItem)
        return ListTile(
          title: Text(item.heading, style: Theme.of(context).textTheme.headline1),
        );
      else if (item is MessageItem) 
        return ListTile(
          title: Text(item.sender),
          subtitle: Text(item.body),
          leading: Icon(Icons.insert_photo, color: Colors.red),
          trailing: Icon(Icons.keyboard_arrow_right),
        );
      return Card();
      // return Card(
      //   child: ListTile(
      //     title: Text('${items[index]}'),
      //     leading: Icon(
      //       Icons.insert_photo,
      //       color: Colors.red,
      //     ),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      // );
    },
  );
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender, body;
  MessageItem(this.sender, this.body);
}