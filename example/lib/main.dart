import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_is_emulator/flutter_is_emulator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = 'Unknown';

  @override
  initState() {
    super.initState();
    initPlatformState();
  }

  initPlatformState() async {
    String text;
    try {
      bool res = await FlutterIsEmulator.isDeviceAnEmulatorOrASimulator;
      text = res.toString();
    } on PlatformException {
      text = 'Error.';
    }

    if (!mounted) return;

    setState(() {
      _text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Plugin example app'),
        ),
        body: new Center(
          child: new Text('Emulator/simulator: $_text\n'),
        ),
      ),
    );
  }
}
