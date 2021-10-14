import 'package:flutter/material.dart';

import './entry.dart';
import './dropdown.dart';
import './submit.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alexa Skill Creator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var skill_name =
      Entry("Skill Name : ", "Enter the name of your new skill here");
  var invocation_name = Entry("Invocation Name : ",
      "Enter what the user will say to start your skill here. No punctuation.");
  var short_desc = Entry(
      "Short Description : ", "Enter a short summary of your new skill here.");
  var long_desc = Entry(
      "Full Description : ", "Enter a full description of your skill here");
  var parent_id = Entry("Parent Skill ID : ",
      "Enter the skill ID that your new skill will inherit from here.");
  var img_url = Entry("Image URL : ",
      "Enter the URL of an image to be used as your skill's icon. Use square images to avoid skewing.");

  var timezone = DropDown(
      items: ['US/Eastern', 'US/Pacific', 'US/Mountain', 'US/Hawaii'],
      hint: 'Choose a Timezone');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Alexa Skill Creator")),
        body: ListView(children: [
          skill_name,
          invocation_name,
          short_desc,
          long_desc,
          parent_id,
          img_url,
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            timezone,
          ]),
          ElevatedButton(
              onPressed: () {
                print(timezone.current_selection);
                print(skill_name.text_controller.text);
              },
              child: Text('Submit'))
        ]));
  }
}
