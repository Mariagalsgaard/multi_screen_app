import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Multi Page App"),
        ),
        body: new Checkbox(
          value: false,
          onChanged: (newValue) {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (ctxt) => new SecondScreen()),
            );
          },
        ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Multi Page App Page-1"),
        ),
        body: new Checkbox(
            value: false,
            onChanged: (newValue) {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new ThirdScreen()),
              );
            }));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Third screen"),
        ),
        body: new Text("This is the third page")
    );
  }
}
