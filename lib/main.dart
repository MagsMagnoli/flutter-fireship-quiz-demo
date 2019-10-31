import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Theme.of(context).platform == TargetPlatform.android
              ? Switch(value: true, onChanged: (v) => null)
              : CupertinoSwitch(value: true, onChanged: (v) => null),
        ),
      ),
    );
  }
}
