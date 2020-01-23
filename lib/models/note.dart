import 'package:flutter/foundation.dart';

class Coord {
  double latitude;
  double longitude;

  Coord({this.latitude, this.longitude});
}

class Note {
  String title;
  String note;
  Coord position;

  Note({@required this.title, this.note, @required this.position});
}
