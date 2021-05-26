import 'package:app_one/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Flutter Demo Home Page');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _darkTheme = false;

  void _incrementCounter() {
    setState(() {
      _darkTheme = !_darkTheme;
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.title!,
      theme: tealTheme,
      themeMode:
          _darkTheme ? ThemeMode.dark : ThemeMode.light, //light, dark, system
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title!,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontFamily: 'Cookie')),
              Text('$_counter', style: Theme.of(context).textTheme.headline1),
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
