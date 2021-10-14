import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  void submit() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: submit, child: Text('Submit'));
  }
}
