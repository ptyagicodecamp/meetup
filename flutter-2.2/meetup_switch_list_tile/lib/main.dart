/// Flutter code sample for SwitchListTile

// ![Switch list tile semantics sample](https://flutter.github.io/assets-for-api-docs/assets/material/switch_list_tile_semantics.png)
//
// Here is an example of a custom labeled radio widget, called
// LinkedLabelRadio, that includes an interactive [RichText] widget that
// handles tap gestures.

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class LinkedLabelSwitch extends StatelessWidget {
  const LinkedLabelSwitch({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RichText(
              text: TextSpan(
                text: label,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Label has been tapped.');
                  },
              ),
            ),
          ),
          Switch(
            value: value,
            onChanged: (bool newValue) {
              onChanged(newValue);
            },
          ),
        ],
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LinkedLabelSwitch(
      label: 'Linked, tappable label text',
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}