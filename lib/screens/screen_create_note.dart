import 'package:flutter/material.dart';

class ScreenCreateNote extends StatefulWidget {
  @override
  _ScreenCreateNoteState createState() => _ScreenCreateNoteState();
}

class _ScreenCreateNoteState extends State<ScreenCreateNote> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Form(
        key: _formKey,
        child: Column(children: <Widget>[
          TextFormField(

            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ]),
      ),
    );
  }
}
