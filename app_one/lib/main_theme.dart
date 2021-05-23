import 'package:app_one/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var appTheme = tealTheme;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Flutter Demo Home Page');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _toggleTheme = false;

  void _incrementCounter() {
    setState(() {
      _toggleTheme = !_toggleTheme;
      appTheme = _toggleTheme ? purpleTheme : tealTheme;
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      theme: appTheme,
      themeMode: ThemeMode.system, //light, dark, system
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  fontFamily: 'MountainsofChristmas',
                  fontSize: 20.0,
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
