import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SwitchListTile1(),
    );
  }
}

class SwitchListTile1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchListTileState();
  }
}

class _SwitchListTileState extends State<SwitchListTile1> {
  bool accepted = false;
  String privacyLabel = 'Privacy Policy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SwitchListTile: Clickable label",
        ),
      ),
      body: Column(
        children: <Widget>[
          HyperlinkedLabelSwitch(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            label: privacyLabel,
            hyperlink:
                'https://docs.google.com/document/d/1TAqTE7MBzuIagISHHzjGxSHoY1z884LXR3iGIojz1sA/edit?usp=sharing',
            selected: accepted,
            onChange: (bool v) {
              setState(() {
                accepted = v;
                if (accepted) {
                  privacyLabel = 'Privacy Policy (Accepted)';
                } else {
                  privacyLabel = 'Privacy Policy';
                }
              });
            },
          )
        ],
      ),
    );
  }
}

class HyperlinkedLabelSwitch extends StatelessWidget {
  final String label;
  final String hyperlink;
  final bool selected;
  final Function onChange;
  final EdgeInsets padding;

  const HyperlinkedLabelSwitch(
      {Key? key,
      required this.label,
      required this.selected,
      required this.onChange,
      required this.padding,
      required this.hyperlink});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            //1. First widget in row is for label
            //Expanded widget claims the empty area
            Expanded(
              child: RichText(
                  text: TextSpan(
                      text: label,
                      style: TextStyle(
                          color: Colors.redAccent,
                          decoration: TextDecoration.underline,
                          fontSize: 20.0),
                      //TapGestureRecognizer helps to disambiguate gestures from other potential gestures
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          await canLaunch(this.hyperlink)
                              ? await launch(this.hyperlink)
                              : throw 'Could not launch ${this.hyperlink}';
                        })),
            ),

            //2. Next comes the switch to save the user's selection
            Switch(
              value: selected,
              onChanged: (bool v) {
                onChange(v);
              },
            )
          ],
        ),
      ),
    );
  }
}
