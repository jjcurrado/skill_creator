import 'package:flutter/material.dart';

class Entry extends StatefulWidget {
  Entry(this.label, this.initial, {Key? key}) : super(key: key);
  final label;
  final initial;

  var text_controller = TextEditingController();
  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: widget.label, hintText: widget.initial),
          controller: widget.text_controller,
        ));
  }
}
