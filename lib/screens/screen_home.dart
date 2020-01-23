import 'package:flutter/material.dart';
import 'package:places_to_be/models/note.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final entries = [
    Note(
        title: "Manger des moules",
        note: null,
        position: Coord(latitude: 10.12, longitude: 10.12)),
    Note(
        title: "Rooftop ce bâtiment",
        note: null,
        position: Coord(latitude: 10.12, longitude: 10.12)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places to be'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(entries[index].title),
                leading: Icon(Icons.map),
                onTap: () {
                  print('selected : ${entries[index].title}');
                },
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
            Navigator.pushNamed(context, '/create');
            print('Clicked');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
