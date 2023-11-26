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
          leading: Icon(Icons.house),
          title: Text("Hello World"),
        ),
        body: ListView(children: _getListData()),
      ),
    );
  }

  List<Widget> _getListData() {
    // Define the names and their respective letter counts
    Map<String, int> names = {
      'Dan': 3,
      'Reyes': 5,
      'John': 4,
    };

    return names.entries.map((entry) => _buildListTile(entry.key, entry.value)).toList();
  }

  Widget _buildListTile(String name, int count) {
    return Row(
      children: [
        Icon(Icons.person),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name),
            Text('$count letters', style: TextStyle(fontSize: 12.0)),
          ],
        ),
      ],
    );
  }
}
