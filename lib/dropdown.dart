import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown({required this.items, this.hint, Key? key}) : super(key: key);
  var items;
  var hint;

  String? current_selection;
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? _selection;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: DropdownButton<String>(
            value: _selection,
            hint: Text(widget.hint),
            onChanged: (String? new_value) {
              setState(() {
                _selection = new_value!;
                widget.current_selection = new_value;
              });
            },
            items: widget.items.map<DropdownMenuItem<String>>((String item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList()));
  }
}
